def stub_documents
  xml = "<documents><document><id>731</id><uri>urn:c2m:document:id:732</uri><createdAt>2014-10-07T01:35:29-04:00</createdAt><contentSize>178806</contentSize><contentType>application/pdf</contentType></document><document><id>732</id><uri>urn:c2m:document:id:732</uri><createdAt>2014-10-07T01:35:29-04:00</createdAt><contentSize>178806</contentSize><contentType>application/pdf</contentType></document></documents>"
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
 xml = "<addressLists><addressList><id>29547</id><ready>false</ready><total>0</total></addressList></addressLists>"
 stub_request(:get, "https://username:password@#{ Mandao::Configuration::DEFAULT_ENDPOINT }/addressLists").
   to_return(:status => 200, :body => xml, :headers => {})
end

def stub_address_lists_post
 xml = "<addressList><id>29546</id><ready>false</ready><total>0</total></addressList>"
 stub_request(:post, "https://username:password@stage.rest.click2mail.com/v1/addressLists").
   to_return(:status => 200, :body => xml, :headers => {})
end