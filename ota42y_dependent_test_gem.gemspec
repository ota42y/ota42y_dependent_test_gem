
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ota42y_dependent_test_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "ota42y_dependent_test_gem"
  spec.version       = Ota42yDependentTestGem::VERSION
  spec.authors       = ["ota42y"]
  spec.email         = ["ota42y@gmail.com"]

  spec.summary       = 'dependent test gem'
  spec.description   = 'dependent test gem'
  spec.homepage      = 'https://ota42y.com'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ota42y_test_gem", "~> 0.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
