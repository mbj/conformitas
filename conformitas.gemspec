# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'conformitas/version'

Gem::Specification.new do |gem|
  gem.name        = 'conformitas'
  gem.version     = Conformitas::VERSION.dup
  gem.authors     = ['Emmanuel Gomez']
  gem.email       = ['emmanuel.gomez@gmail.com']
  gem.homepage    = 'https://github.com/emmanuel/conformitas'
  gem.summary     = %q{Library for painless form input processing.}
  gem.description = %q{Library for painless form input processing.}

  # git ls-files
  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- {spec}/*`.split("\n")
  gem.executables   = []
  gem.require_paths = ['lib']

  gem.add_dependency('virtus',   '~> 0.5.1')
  gem.add_dependency('aequitas', '~> 0.0.2')

  gem.add_development_dependency('rake',        '~> 0.9.2')
  gem.add_development_dependency('rspec',       '~> 1.3.2')
  gem.add_development_dependency('guard-rspec', '~> 1.0.0')
end
