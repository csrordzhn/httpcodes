$LOAD_PATH.push File.expand('../lib', __FILE__)
require 'httpcodes/version'

Gem::Specification.new do |s|
  s.name = 'httpcodes'
  s.version =
  s.date =
  s.executables << ''
  s.summary = ''
  s.description = ''
  s.authors = []
  s.email = []
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files spec/*`.split("\n")
  s.homepage = ''
  s.license = ''

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'webmock'
  s.add_runtime_dependency 'open-uri'
  s.add_runtime_dependency 'csv'
end
