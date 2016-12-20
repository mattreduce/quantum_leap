# -*- encoding: utf-8 -*-
require File.expand_path('../lib/quantum_leap/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "quantum_leap"
  gem.description   = %q{Righting wrongs in your test suite with time travel!}
  gem.summary       = %q{Lets you change the current time in your tests}

  gem.authors       = ["Matthew Conway"]
  gem.license = 'MIT'
  gem.email         = ["himself@mattonrails.com"]
  gem.homepage      = "https://mattreduce.github.io/quantum_leap/"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ["lib"]
  gem.version       = QuantumLeap::VERSION

  gem.add_development_dependency("minitest")
  gem.add_development_dependency("rake")
end
