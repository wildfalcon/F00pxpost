# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "f00pxpost/version"

Gem::Specification.new do |gem|
  gem.authors       = ["Laurie Young"]
  gem.email         = ["laurie@wildfalcon.com"]
  gem.description   = %q{500px Poster}
  gem.summary       = %q{Really simple abstraction for uploading photos to 500px}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split("\n")
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
