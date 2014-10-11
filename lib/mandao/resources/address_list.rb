module Mandao

  class AddressListCollection < ActiveResource::Collection
    def initialize(parsed = {})
      attrs = []
      attrs << parsed['addressList'] if parsed['addressList'].is_a? Hash
      @elements = attrs || parsed['addressList']
    end
  end

  class AddressList < Base
    self.collection_name = "addressLists"
    self.collection_parser = Mandao::AddressListCollection
  end

end