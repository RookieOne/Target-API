# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "target_api/version"

Gem::Specification.new do |s|
  s.name        = "target_api"
  s.version     = TargetApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jonathan Birkholz"]
  s.email       = ["rookieone@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/target_api"
  s.summary     = %q{Gem for the Target API}
  s.description = %q{Gem for the Target API}

  s.rubyforge_project = "target_api"

  s.add_development_dependency "rspec"
  s.add_development_dependency "httparty"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
