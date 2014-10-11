require 'mandao/version'
Dir.glob(File.expand_path('../resources/*', __FILE__)).each { |file| require(file) } 
require 'mandao/xml_format'
require 'mandao/configuration'