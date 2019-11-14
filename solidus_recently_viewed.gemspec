# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'solidus_recently_viewed/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_recently_viewed'
  s.version     = SolidusRecentlyViewed.version
  s.summary     = 'Adds recently viewed products to Spree'
  s.description = s.summary
  s.required_ruby_version = '>= 2.1.0'

  s.authors     = ['Roman Smirnov', 'Brian Quinn', 'Allison Reilly']
  s.email       = 'acreilly3@gmail.com'
  s.license     = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'deface'
  s.add_dependency 'solidus_core', ['>= 2.4.0', '< 3']
  s.add_dependency 'sassc-rails'
  s.add_dependency 'coffee-script'

  s.add_development_dependency 'solidus_extension_dev_tools'
end
