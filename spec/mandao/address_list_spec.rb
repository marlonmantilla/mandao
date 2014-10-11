require File.expand_path('../../spec_helper', __FILE__)

describe Mandao::AddressList do

  before do
    Mandao.configure do |config|
      config.endpoint = Mandao::Configuration::DEFAULT_ENDPOINT
      config.username = "username"
      config.password = "password"
    end
    stub_address_lists
  end

  it 'should return all address lists' do
    address_lists = Mandao::AddressList.all
    expect(address_lists).to be_present
  end

  it 'should create an address list' do
    
  end

end