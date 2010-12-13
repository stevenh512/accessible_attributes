# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "accessible_attributes/version"

Gem::Specification.new do |s|
  s.name        = "accessible_attributes"
  s.version     = AccessibleAttributes::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Steven Hancock"]
  s.email       = ["stevenh512@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/accessible_attributes"
  s.summary     = %q{Dynamic attr_accessible for Active Record}
  s.description = %q{Dynamic attr_accessible for Active Record, inspired by Ryan Bates Railscasts episode 237}

  s.rubyforge_project = "accessible_attributes"

  s.required_rubygems_version = "> 1.3.6"

  s.add_dependency("rails", "~> 3.0.3")

  s.add_development_dependency("bundler", "~> 1.0.3")
  s.add_development_dependency("rspec", "~> 2.2.0")
  s.add_development_dependency("rspec-rails", "~> 2.2.0")
  s.add_development_dependency("sqlite3-ruby")
  s.add_development_dependency("rdoc")
  s.add_development_dependency("rake")

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
