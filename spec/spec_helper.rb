require 'rspec'
require 'webmock/rspec'
require 'active_resource'

require File.expand_path('../../lib/mandao', __FILE__)
require File.expand_path('../../lib/mandao/resources/base', __FILE__)
Dir.glob(File.expand_path('../../lib/mandao/resources/*', __FILE__)).each { |file| require(file) } 

RSpec.configure do |config|
  config.include WebMock::API  
end

def stub_documents
  stub_request(:get, "https://username:password@stage.rest.click2mail.com/v1/documents").
    with(:headers => {'Accept'=>'application/xml', 'User-Agent'=>'Ruby'}).
    to_return(:status => 200, :body => "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<documents>\n    <document>\n        <id>732</id>\n        <uri>urn:c2m:document:id:732</uri>\n        <createdAt>2014-10-07T01:35:29-04:00</createdAt>\n        <contentSize>178806</contentSize>\n        <contentType>application/pdf</contentType>\n    </document>\n    <document>\n        <id>733</id>\n        <uri>urn:c2m:document:id:733</uri>\n        <createdAt>2014-10-07T03:42:29-04:00</createdAt>\n        <contentSize>79</contentSize>\n        <contentType>text/plain</contentType>\n    </document>\n    <document>\n        <id>734</id>\n        <uri>urn:c2m:document:id:734</uri>\n        <createdAt>2014-10-07T03:44:45-04:00</createdAt>\n        <contentSize>180</contentSize>\n        <contentType>text/plain</contentType>\n    </document>\n    <document>\n        <id>735</id>\n        <uri>urn:c2m:document:id:735</uri>\n        <createdAt>2014-10-07T23:48:14-04:00</createdAt>\n        <contentSize>178806</contentSize>\n        <contentType>application/pdf</contentType>\n    </document>\n    <document>\n        <id>736</id>\n        <uri>urn:c2m:document:id:736</uri>\n        <createdAt>2014-10-07T23:59:52-04:00</createdAt>\n        <contentSize>178806</contentSize>\n        <contentType>application/pdf</contentType>\n    </document>\n    <document>\n        <id>737</id>\n        <uri>urn:c2m:document:id:737</uri>\n        <createdAt>2014-10-08T00:00:54-04:00</createdAt>\n        <contentSize>0</contentSize>\n        <contentType>text/plain</contentType>\n    </document>\n</documents>\n", :headers => {})
end