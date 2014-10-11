module Mandao
  class Address
    attr_accessor :first_name, :last_name, :organization, :address1, 
    :address2, :address3, :city, :state, :zip, :country_non_us
    
    def initialize(options={})
      @first_name = options[:first_name]
      @last_name = options[:last_name]
      @organization = options[:organization]
      @address1 = options[:address1]
      @address2 = options[:address2]
      @address3 = options[:address3]
      @city = options[:city]
      @state = options[:state]
      @zip = options[:zip]
      @country_non_us = options[:country_non_us]
    end

    def to_xml
      "<address>
        <First_name>#{ @first_name }</First_name>
        <Last_Name>#{ @last_name }</Last_Name>
        <Organization>#{ @organization }</Organization>
        <Address1>#{ @address1 }</Address1>
        <Address2>#{ @address2 }</Address2>
        <Address3>#{ @address3 }</Address3>
        <City>#{@city}</City>
        <State>#{@state}</State>
        <Zip>#{@zip}</Zip>
        <Country_non-US>#{@country_non_us}</Country_non-US>
      </address>"
    end

  end
end