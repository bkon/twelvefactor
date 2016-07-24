# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "twelvefactor/version"

Gem::Specification.new do |spec|
  spec.name          = "twelvefactor"
  spec.version       = Twelvefactor::VERSION
  spec.authors       = ["Konstantin Burnaev"]
  spec.email         = ["kbourn@gmail.com"]

  spec.summary       = <<EOF
Core gem for 12-factor configuration setup.
EOF

  spec.homepage      = "https://github.com/bkon/twelvefactor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`
                       .split("\x0")
                       .reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.41"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "guard-rubocop", "~> 1.2"
  spec.add_development_dependency "codecov"
end
