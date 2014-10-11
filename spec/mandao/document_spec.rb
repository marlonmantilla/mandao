require File.expand_path('../../spec_helper', __FILE__)

describe Mandao::Document do

  before do
    Mandao.configure do |config|
      config.endpoint = Mandao::Configuration::DEFAULT_ENDPOINT
      config.username = "username"
      config.password = "password"
    end
    stub_documents
    stub_document_post
  end

  it 'should return all documents' do
    documents = Mandao::Document.all
    expect(documents).to be_present
  end

  it 'should create a document with a pdf' do
    pdf = File.open(File.expand_path('../files/document.pdf', __FILE__), 'rb')
    document = Mandao::Document.create(pdf)
    expect(document).to be_present
  end

end