$LOAD_PATH.push File.expand('../lib', __FILE__)
require 'httpcodes/version'

Gem::Specification.new do |s|
  s.name = 'httpcodes'
  s.version = HttpCodesFetcher::VERSION
  s.date = HttpCodesFetcher::DATE
  s.executables << 'http_codes'
  s.summary = 'Get http codes'
  s.description = 'Provides a easy and fast way to find http codes by number or description.'
  s.authors = ['Cesar Ordonez']
  s.email = ['cesardev@gmail.com']
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files spec/*`.split("\n")
  s.homepage = 'https://github.com/csrordzhn/httpcodes'
  s.license = 'MIT'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'webmock'
  s.add_runtime_dependency 'open-uri'
  s.add_runtime_dependency 'csv'
end
