module Mandao
  class Base < ActiveResource::Base
    self.include_format_in_path = false

    class << self

      def activate(options={})
        begin
          self.site = options[:api_endpoint]
          self.format = options[:default_format]
        rescue
          raise 'Missing api_endpoint, default_format configuration'
        end
      end

      def parse_response(xml)
        ActiveResource::Formats::XmlFormat.decode(xml)
      end

    end

  end
end