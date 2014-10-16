module Mandao

  class AddressListCollection < ActiveResource::Collection
    def initialize(parsed = {})
      attrs = []
      parsed['addressList']
      attrs << parsed['addressList'] if parsed['addressList'].is_a? Hash
      @elements = if attrs.present?
                      attrs 
                    else 
                      parsed['addressList']
                    end
    end
  end

  class AddressList < Base
    self.collection_name = "addressLists"
    self.collection_parser = Mandao::AddressListCollection

    class << self

      def create(list_name, addresses=[])
        if list_name && addresses
          xml = generate_xml(addresses)
          begin
            response = RestClient.post("#{self.site}#{ self.collection_name }", xml, content_type: :xml )
            attrs = parse_response(response)
            Mandao::AddressList.new(attrs)
          rescue
          end
        else
          raise StandardError, 'Address List must contain a name and at least one address.'
        end
      end

      def generate_xml(addresses)
        addresses_xml = ""
        addresses.each do |address_attrs|
          addresses_xml += Mandao::Address.new(address_attrs).to_xml
        end
        "<addressList>
          <addressListName>Best Customers test</addressListName>
          <addressMappingId>2</addressMappingId>
          <addresses>
            #{ addresses_xml }
          </addresses>
        </addressList>"
      end

    end

  end

end