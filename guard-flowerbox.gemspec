# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["John Bintz"]
  gem.email         = ["john@coswellproductions.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "guard-flowerbox"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"

  gem.add_runtime_dependency 'guard'
  gem.add_runtime_dependency 'flowerbox'
end

