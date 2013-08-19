# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'codeship/version'

Gem::Specification.new do |spec|
  spec.name          = "codeship"
  spec.version       = Codeship::VERSION
  spec.authors       = ["beanieboi"]
  spec.email         = ["ben@codeship.io"]
  spec.description   = %q{easily interact with Codeship.io}
  spec.summary       = %q{easily interact with Codeship.io}
  spec.homepage      = "https://www.codeship.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",  "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec",    "~> 2.9"
  spec.add_development_dependency "vcr",      "~> 2.5"
  spec.add_development_dependency "webmock"
end
