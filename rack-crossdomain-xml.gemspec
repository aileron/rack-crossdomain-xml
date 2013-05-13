# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/crossdomain/xml/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-crossdomain-xml"
  spec.version       = Rack::Crossdomain::Xml::VERSION
  spec.authors       = ["Thorben Schröder"]
  spec.email         = ["stillepost@gmail.com"]
  spec.description   = %q{A rack middleware that serves a standard crossdomain.xml}
  spec.summary       = %q{A rack middleware that serves a standard crossdomain.xml}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-client"
end
