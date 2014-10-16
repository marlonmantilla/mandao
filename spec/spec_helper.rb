require 'rspec'
require 'webmock/rspec'
require 'active_resource'
require 'rest_client'

require File.expand_path('../../lib/mandao', __FILE__)
# require File.expand_path('../../lib/mandao/resources/base', __FILE__)
# require File.expand_path('../../lib/mandao/xml_format', __FILE__)
require File.expand_path('..//mandao/stub_requests', __FILE__)
# Dir.glob(File.expand_path('../../lib/mandao/resources/*', __FILE__)).each { |file| require(file) } 

RSpec.configure do |config|
  config.include WebMock::API  
end