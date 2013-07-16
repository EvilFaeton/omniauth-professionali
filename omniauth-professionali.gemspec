# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/professionali/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-professionali"
  spec.version       = Omniauth::Professionali::VERSION
  spec.authors       = ["Sergey Efremov"]
  spec.email         = ["efremov.sergey@gmail.com"]
  spec.description   = %q{OmniAuth strategy for Professionali.ru}
  spec.summary       = %q{OmniAuth strategy for Professionali.ru}
  spec.homepage      = "https://github.com/EvilFaeton/omniauth-professionali"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
