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

    APP_API_URL =
      "https://slicer-packages.kitware.com/api/v1/app/5f4474d0e1d8c75dfc705482"
    RELEASES_API_URL = "#{APP_API_URL}/release"
    MACOS_ARM64_PACKAGES_API_URL = "#{APP_API_URL}/package?os=macosx&arch=arm64&limit=0"

    def generate(site)
      generate_stable_releases(site)
      generate_macos_arm64_releases(site)
    end

    private

    def generate_stable_releases(site)
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

    # Exposes `site.data["slicer_stable_releases_macos_arm64"]`, the stable
    # release versions for which a macOS arm64 (Apple Silicon) package exists.
    # The picker only enables the Apple Silicon option for these versions.
    def generate_macos_arm64_releases(site)
      versions = fetch_macos_arm64_versions
      site.data["slicer_stable_releases_macos_arm64"] = versions
      Jekyll.logger.info "[SlicerStableReleases]:",
                         "Found #{versions.length} stable release(s) with a macOS arm64 package."
    rescue StandardError => e
      Jekyll.logger.warn "[SlicerStableReleases]:",
                         "Could not fetch macOS arm64 packages (#{e.class}: #{e.message}); " \
                         "the Apple Silicon option of the older-release picker will be disabled."
      site.data["slicer_stable_releases_macos_arm64"] = []
    end

    def fetch_json(url)
      body = URI.parse(url).open(open_timeout: 15, read_timeout: 30, &:read)
      JSON.parse(body)
    end

    # Returns the names of the releases associated with a macOS arm64 package.
    # Preview packages have no "release" metadata and are skipped.
    def fetch_macos_arm64_versions
      fetch_json(MACOS_ARM64_PACKAGES_API_URL)
        .map { |package| package.dig("meta", "release") }
        .compact
        .reject(&:empty?)
        .uniq
    end

    # Returns the release version names sorted in descending (newest first) order.
    def fetch_versions
      releases = fetch_json(RELEASES_API_URL)
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
