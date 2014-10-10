# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mandao/version'

Gem::Specification.new do |spec|
  spec.name          = "mandao"
  spec.version       = Mandao::VERSION
  spec.authors       = ["Marlon Mantilla"]
  spec.email         = ["me@marlonmantilla.com"]
  spec.summary       = %q{Mandao is a cool gem for accessing the Click2Mail REST API. https://developers.click2mail.com/rest-api/molpro/getting-started/main}
  spec.description   = %q{Mandao gem allows developers to access Click2Mail REST services in a simple way.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activeresource", "~> 4.0.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
