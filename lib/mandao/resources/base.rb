require File.expand_path('../../configuration', __FILE__)

module Mandao
  class Base < ActiveResource::Base
    self.include_format_in_path = false

    class << self

      def activate
        self.site = Mandao.config.api_endpoint
        self.format = Mandao.config.format
      end

      def parse_response(xml)
        ActiveResource::Formats::XmlFormat.decode(xml)
      end

    end

  end
end