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

  spec.add_dependency "json"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "pry"
end
