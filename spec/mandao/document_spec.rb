require File.expand_path('../../spec_helper', __FILE__)

describe Mandao::Document do

  before do
    Mandao.configure do |config|
      config.endpoint = Mandao::Configuration::DEFAULT_ENDPOINT
      config.username = "username"
      config.password = "password"
    end
    stub_documents
  end

  it 'should return all documents' do
    documents = Mandao::Document.all
  end

end