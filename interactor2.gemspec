# frozen_string_literal: true
$LOAD_PATH << File.expand_path('lib', __dir__)
require 'interactor2/version'

Gem::Specification.new do |s|
  s.name        = 'interactor2'
  s.version     = Interactor2::VERSION
  s.licenses    = ['MIT']
  s.summary     = 'Small, simple and dependency-free service object.'
  s.description = <<~EOS
    Small, simple and dependency-free service object.
  EOS
  s.author      = 'Jian Weihang'
  s.email       = 'tonytonyjan@gmail.com'
  s.files       = ['lib/interactor2']
  s.homepage    = 'https://github.com/tonytonyjan/interactor2'
  s.add_development_dependency 'rubocop', '~> 0.41'
  s.add_development_dependency 'minitest', '~> 5.9'
  s.add_development_dependency 'rake', '~> 11.2'
end
