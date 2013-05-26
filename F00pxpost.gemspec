# -*- encoding: utf-8 -*-
require File.expand_path('../lib/f00pxpost/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["TODO: Write your name"]
  gem.email         = ["laurie@wildfalcon.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "f00pxpost"
  gem.require_paths = ["lib"]
  gem.version       = F00pxpost::VERSION
  
  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  gem.add_runtime_dependency "rest-client"
  gem.add_runtime_dependency "json"
  gem.add_runtime_dependency "oauth"
end
