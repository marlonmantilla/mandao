require 'rest_client'

module Mandao

  class DocumentCollection < ActiveResource::Collection
    def initialize(parsed = {})
      attrs = []
      attrs << parsed['document'] if parsed['document'].is_a? Hash
      @elements = attrs || parsed['document']
    end
  end

  class Document < Base
    self.collection_parser = Mandao::DocumentCollection

    class << self
      def create(file, content_type='application/pdf')
        response = RestClient.post("#{self.site}documents", file, content_type: content_type, accept: 'application/xml')
        attrs = parse_response(response)
        Mandao::Document.new(attrs)
      end
    end

  end

end
