# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'conformitas/version'

Gem::Specification.new do |s|
  s.name        = 'conformitas'
  s.version     = Conformitas::VERSION.dup
  s.authors     = ['Emmanuel Gomez']
  s.email       = ['emmanuel.gomez@gmail.com']
  s.homepage    = 'https://github.com/emmanuel/conformitas'
  s.summary     = %q{Library for painless form input processing.}
  s.description = %q{Library for painless form input processing.}

  # git ls-files
  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = []
  s.require_paths = ['lib']

  s.add_dependency('virtus',   ['~> 0.4.0'])
  s.add_dependency('aequitas',   ['~> 0.0.2'])

  s.add_development_dependency('minitest', ['~> 2.8'])
end
