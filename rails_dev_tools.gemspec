# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_dev_tools/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_dev_tools"
  spec.version       = RailsDevTools::VERSION
  spec.authors       = ["Ben Eggett"]
  spec.email         = ["beneggett@gmail.com"]
  spec.summary       = %q{A collection of useful development gems for Ruby on Rails.}
  spec.description   = %q{Gives you better debugging tools out the gate. See readme for install instructions.}
  spec.homepage      = "http://github.com/beneggett/rails_dev_tools"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency "pry-rails"
  spec.add_dependency "pry-doc"
  spec.add_dependency "powder"
  spec.add_dependency "better_errors"
  spec.add_dependency "binding_of_caller"
  spec.add_dependency "meta_request"
  spec.add_dependency "xray-rails"
  spec.add_dependency "rack-livereload"
  spec.add_dependency "guard"
  spec.add_dependency "guard-livereload"
  spec.add_dependency "guard-pow"
  spec.add_dependency "ruby_gntp"
  spec.add_dependency "letter_opener"

end
