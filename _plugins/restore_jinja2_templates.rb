# frozen_string_literal: true

require "jekyll"
require "uri"

module Jekyll
  class RestoreJinja2Templates

    class << self
      # Public: Processes the content and replaces both "%7B%7B" and "%7D%7D" respectively
      # with "{{" and "}}".
      #
      # This is required because the plugin "jekyll-target-blank" systematically encodes URLs
      # found in the HTML content.
      #
      # content - the document or page to be processes.
      def process(content)
        @site_url                              = content.site.config["url"]
        @config                                = content.site.config

        return unless content.output.include?("%7B%7B") || content.output.include?("%7D%7D")

        Jekyll.logger.warn "[RestoreJinja2Templates]: Processing document: #{content.relative_path}"

        content.output = content.output.gsub(/%7B%7B/, "{{").gsub(/%7D%7D/, "}}")
      end

      # Public: Determines if the document should be processed.
      #
      # doc - the document being processed.
      def document_processable?(doc)
        (doc.is_a?(Jekyll::Page) || doc.write?) &&
          doc.output_ext == ".html" || (doc.permalink&.end_with?("/"))
      end

      private

    end
  end
end

# Hooks into Jekyll's post_render event.
Jekyll::Hooks.register [:pages, :documents], :post_render, priority: :low do |doc|
  Jekyll::RestoreJinja2Templates.process(doc) if Jekyll::RestoreJinja2Templates.document_processable?(doc)
end
