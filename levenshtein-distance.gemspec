# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Akira Hirakawa"]
  gem.email         = ["akirahrkw@gmail.com"]
  gem.summary       = %q{ruby implementation of levenshtein distance}
  gem.description   = %q{ruby implementation of levenshtein distance (https://github.com/akirahrkw/levenshtein-distance) }
  gem.homepage      = "http://www.akirahrkw.com"  
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "levenshtein-distance"
  gem.require_paths = ["lib"]
  gem.version       = "0.1"
end