$LOAD_PATH << File.expand_path("../lib", __FILE__)
require 'memeasure'

Gem::Specification.new do |s|
  s.name        = 'memeasure'
  s.version     = MeMeasure::VERSION
  s.date        = '2015-12-30'
  s.summary     = "Basic ruby memory profiling tool"
  s.description = "A bare bones memory measurement tool for ruby / rails"
  s.authors     = ["Dain Hall"]
  s.email       = 'dainovu3@gmail.com'
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.homepage    = 'http://rubygems.org/gems/memeasure'
  s.license     = 'MIT'
end
