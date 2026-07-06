# frozen_string_literal: true

require "jekyll"
require "open-uri"
require "json"
require "uri"

# Fetches the list of published 3D Slicer stable releases from the Slicer
# packages API once, at build time, and exposes it as
# `site.data["slicer_stable_releases"]` (version names sorted newest first,
# with the latest release omitted).
#
# The list is rendered directly into the "Access Older Releases" version picker
# on the download page (see download.markdown). Baking it into the generated
# HTML at deploy time avoids performing a request to slicer-packages.kitware.com
# from every visitor's browser on every page load.
module Jekyll
  class SlicerStableReleasesGenerator < Jekyll::Generator
    # Run early so the data is available to every page during rendering.
    priority :high

    RELEASES_API_URL =
      "https://slicer-packages.kitware.com/api/v1/app/5f4474d0e1d8c75dfc705482/release"

    def generate(site)
      versions = fetch_versions
      # Drop the latest stable release; it is already offered in the main
      # download table shown above the picker.
      site.data["slicer_stable_releases"] = versions.drop(1)
      Jekyll.logger.info "[SlicerStableReleases]:",
                         "Fetched #{versions.length} stable release(s)."
    rescue StandardError => e
      Jekyll.logger.warn "[SlicerStableReleases]:",
                         "Could not fetch stable releases (#{e.class}: #{e.message}); " \
                         "the older-release picker will be rendered empty."
      site.data["slicer_stable_releases"] = []
    end

    private

    # Returns the release version names sorted in descending (newest first) order.
    def fetch_versions
      body = URI.parse(RELEASES_API_URL).open(open_timeout: 15, read_timeout: 30, &:read)
      releases = JSON.parse(body)
      releases
        .map { |release| release["name"] }
        .compact
        .reject(&:empty?)
        .sort { |a, b| compare_versions_desc(a, b) }
    end

    # Compares two version strings (e.g. "5.12.0", "4.11.20210226") numerically,
    # returning a value suitable for a descending sort.
    def compare_versions_desc(a, b)
      pa = a.split(/[.-]/).map(&:to_i)
      pb = b.split(/[.-]/).map(&:to_i)
      [pa.length, pb.length].max.times do |i|
        na = pa[i] || 0
        nb = pb[i] || 0
        return nb <=> na unless na == nb
      end
      0
    end
  end
end
