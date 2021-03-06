module ActiveResource
  module Formats
    module XmlFormat

      def decode(xml)
        data = Hash.from_xml(xml)
        if data.is_a?(Hash) && data.keys.size == 1
          data.values.first
        else
          data
        end
      end

      def extension
        "xml"
      end

      def mime_type
        "application/xml"
      end

    end
  end
end