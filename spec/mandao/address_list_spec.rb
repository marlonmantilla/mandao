require File.expand_path('../../spec_helper', __FILE__)

describe Mandao::AddressList do

  before do
    Mandao.configure do |config|
      config.endpoint = Mandao::Configuration::DEFAULT_ENDPOINT
      config.username = "username"
      config.password = "password"
    end
    stub_address_lists
    stub_address_lists_post
  end

  it 'should return all address lists' do
    address_lists = Mandao::AddressList.all
    expect(address_lists).to be_present
  end

  it 'should create an address list' do
    address_lists = [{ 
      first_name: 'John',
      last_name: 'Doe',
      organization: 'Umbrella',
      address1: '742 Evergreen Terrace',
      address2: '743 Evergreen Terrace',
      address3: '',
      city: 'Springfield',
      state: 'MA',
      zip: '12345',
      country_non_us: ''
    }]
    address_list = Mandao::AddressList.create("My Address List", address_lists)
    expect(address_list).to be_present
  end

end