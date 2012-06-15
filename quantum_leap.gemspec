# -*- encoding: utf-8 -*-
require File.expand_path('../lib/quantum_leap/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matthew Conway"]
  gem.email         = ["mattonrails@shortmail.com"]
  gem.description   = %q{Righting wrongs in your test suite with time travel!}
  gem.summary       = %q{Lets you change the current time in your tests}
  gem.homepage      = "http://mattonrails.github.com/quantum_leap/"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "quantum_leap"
  gem.require_paths = ["lib"]
  gem.version       = QuantumLeap::VERSION

  gem.add_development_dependency("rake")
  gem.add_development_dependency("minitest-colorize")
end
