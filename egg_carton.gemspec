# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "egg_carton/version"

Gem::Specification.new do |s|
  s.name        = "egg_carton"
  s.version     = EggCarton::VERSION
  s.authors     = ["Brandon Hilkert"]
  s.email       = ["brandonhilkert@gmail.com"]
  s.homepage    = "https://github.com/brandonhilkert/egg_carton"
  s.summary     = %q{Egg Carton Format Helpers}
  s.description = %q{Egg Carton is a series of Ruby number helpers to help with reporting conversions and click-throughs.}

  s.rubyforge_project = "egg_carton"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", "~> 2.8"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "growl"
  s.add_development_dependency "rake"
  if RUBY_PLATFORM =~ /darwin/i
    s.add_development_dependency 'rb-fsevent'
    s.add_development_dependency 'growl'
  end
end
