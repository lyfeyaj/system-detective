# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'system-detective/version'

Gem::Specification.new do |s|
  s.name          = 'system-detective'
  s.version       = SystemDetective::VERSION
  s.authors       = ['lyfeyaj']
  s.email         = ['lyfeyaj@gmail.com']
  s.description   = %q{A system detective for your server to find out evils}
  s.summary       = %q{A system detective for your server to find out evils}
  s.homepage      = 'https://github.com/lyfeyaj/system-detective'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']


  s.add_development_dependency 'bundler', ['>= 1.0.0']
  s.add_development_dependency 'rake', ['>= 0']
  s.add_development_dependency 'rspec-its', ['>= 1.0.0']
  s.add_development_dependency 'pry', ['>= 0']
  s.add_development_dependency 'sdoc', ['>= 0']
end
