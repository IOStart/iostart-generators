# -*- encoding: utf-8 -*-
require File.expand_path('../lib/iostart-generators/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ignacio Ortega"]
  gem.email         = ["ignacio.ortega@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "iostart-generators"
  gem.require_paths = ["lib"]
  gem.version       = Iostart::Generators::VERSION

  gem.add_development_dependency 'rails', '~> 3.2.3'
end
