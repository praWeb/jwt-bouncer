# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jwt_bouncer/version'

Gem::Specification.new do |spec|
  spec.name          = 'jwt-bouncer'
  spec.version       = JwtBouncer::VERSION
  spec.authors       = ['Ryan Townsend']
  spec.email         = ['ryan@ryantownsend.co.uk']

  spec.summary       = 'jwt-bouncer is an abstraction for JWT-based authentication/authorisation'
  spec.homepage      = 'https://github.com/ryantownsend/jwt-bouncer'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'activesupport', '~> 5.0', '>= 5.0.1'
  spec.add_dependency 'rack', '~> 2.0'
  spec.add_dependency 'jwt', '~> 1.5', '>= 1.5.6'
end
