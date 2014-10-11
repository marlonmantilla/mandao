def stub_documents
  xml = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<documents>\n    <document>\n        <id>732</id>\n        <uri>urn:c2m:document:id:732</uri>\n        <createdAt>2014-10-07T01:35:29-04:00</createdAt>\n        <contentSize>178806</contentSize>\n        <contentType>application/pdf</contentType>\n    </document>\n    <document>\n        <id>733</id>\n        <uri>urn:c2m:document:id:733</uri>\n        <createdAt>2014-10-07T03:42:29-04:00</createdAt>\n        <contentSize>79</contentSize>\n        <contentType>text/plain</contentType>\n    </document>\n    <document>\n        <id>734</id>\n        <uri>urn:c2m:document:id:734</uri>\n        <createdAt>2014-10-07T03:44:45-04:00</createdAt>\n        <contentSize>180</contentSize>\n        <contentType>text/plain</contentType>\n    </document>\n    <document>\n        <id>735</id>\n        <uri>urn:c2m:document:id:735</uri>\n        <createdAt>2014-10-07T23:48:14-04:00</createdAt>\n        <contentSize>178806</contentSize>\n        <contentType>application/pdf</contentType>\n    </document>\n    <document>\n        <id>736</id>\n        <uri>urn:c2m:document:id:736</uri>\n        <createdAt>2014-10-07T23:59:52-04:00</createdAt>\n        <contentSize>178806</contentSize>\n        <contentType>application/pdf</contentType>\n    </document>\n    <document>\n        <id>737</id>\n        <uri>urn:c2m:document:id:737</uri>\n        <createdAt>2014-10-08T00:00:54-04:00</createdAt>\n        <contentSize>0</contentSize>\n        <contentType>text/plain</contentType>\n    </document>\n</documents>\n"
  stub_request(:get, "https://username:password@#{ Mandao::Configuration::DEFAULT_ENDPOINT }/documents").
    with(:headers => {'Accept'=>'application/xml', 'User-Agent'=>'Ruby'}).
    to_return(:status => 200, :body => xml, :headers => {})
end

def stub_document_post
  xml = "<documents>
            <id>12345</id>
            <status>0</status>
            <description>Success</description>
          </documents>"
  stub_request(:post, "https://username:password@#{ Mandao::Configuration::DEFAULT_ENDPOINT }/documents").
    with(headers: {'Accept' => 'application/xml', 'Content-Type' => 'application/pdf'}).
    to_return(status: 200, body: xml)

end

def stub_address_lists
 xml = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<addressLists>\n    <addressList>\n        <id>29546</id>\n        <ready>false</ready>\n        <total>0</total>\n    </addressList>\n</addressLists>\n"
 stub_request(:get, "https://username:password@#{ Mandao::Configuration::DEFAULT_ENDPOINT }/addressLists").
   with(:headers => {'Accept'=>'application/xml', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
   to_return(:status => 200, :body => xml, :headers => {})
end