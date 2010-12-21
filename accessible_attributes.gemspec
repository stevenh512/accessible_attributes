# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "accessible_attributes/version"

Gem::Specification.new do |s|
  s.name        = "accessible_attributes"
  s.version     = AccessibleAttributes::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Steven Hancock"]
  s.email       = ["stevenh512@gmail.com"]
  s.homepage    = "https://github.com/stevenh512/accessible_attributes"
  s.summary     = %q{Dynamic attr_accessible for Active Record}
  s.description = %q{Dynamic attr_accessible for Active Record, inspired by Ryan Bates Railscasts episode 237}

  s.rubyforge_project = "accessible_attributes"

  s.required_rubygems_version = "> 1.3.6"

  s.add_dependency("actionpack", "~> 3.0.3")
  s.add_dependency("activerecord", "~> 3.0.3")
  s.add_dependency("activesupport", "~> 3.0.3")

  s.add_development_dependency("bundler")
  s.add_development_dependency("rake")
  s.add_development_dependency("rdiscount")
  s.add_development_dependency("rspec", "~> 2.3.0")
  s.add_development_dependency("sqlite3-ruby")
  s.add_development_dependency("yard")

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
