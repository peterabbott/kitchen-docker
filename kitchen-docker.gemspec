# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/docker_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-docker'
  spec.version       = Kitchen::Driver::DOCKER_VERSION
  spec.authors       = ['Sean Porter', 'Peter Abbott']
  spec.email         = ['portertech@gmail.com']
  spec.description   = %q{A Docker Driver for Test Kitchen}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/peterabbott/kitchen-docker'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen', '>= 1.0.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'cane'
  spec.add_development_dependency 'tailor'
  spec.add_development_dependency 'countloc'
  spec.add_development_dependency 'gem-release'
  spec.add_development_dependency "rspec","~> 3.2"
end
