# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'favidenticon/version'

Gem::Specification.new do |spec|
  spec.name          = "favidenticon"
  spec.version       = Favidenticon::VERSION
  spec.authors       = ["fukayatsu"]
  spec.email         = ["fukayatsu@gmail.com"]
  spec.summary       = %q{favicon.ico generator}
  spec.description   = %q{favicon.ico generator}
  spec.homepage      = "https://github.com/fukayatsu/favidenticon"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/).delete_if { |file| file.match /^screenshots/ }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.18.1"
  spec.add_dependency "mini_magick", "~> 3.7.0"
  spec.add_dependency "ruby_identicon", "~> 0.0.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 3.0.0beta1"
end
