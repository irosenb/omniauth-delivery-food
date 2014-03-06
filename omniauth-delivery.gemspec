# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/delivery/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-delivery-food"
  spec.version       = Omniauth::Delivery::VERSION
  spec.authors       = ["Isaac Rosenberg"]
  spec.email         = ["irosenb7@gmail.com"]
  spec.description   = %q{Omniauth authorization for Delivery.com API}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/irosenb/omniauth-delivery-food"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth"
  spec.add_dependency "omniauth-oauth2"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
