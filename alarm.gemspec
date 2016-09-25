
# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alarm/version'

Gem::Specification.new do |gem|
  gem.name          = "alarm"
  gem.version       = Alarm::VERSION
  gem.authors       = ["Edwin Tunggawan"]
  gem.email         = ["vcc.edwint@gmail.com"]
  gem.description   = %q{}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/sdsdkkk/alarm"
  gem.licenses      = ['MIT']

  gem.add_dependency 'nokogiri', '~> 1.6.8'
  gem.add_development_dependency 'rspec'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ["lib", "lib/alarm"]
end