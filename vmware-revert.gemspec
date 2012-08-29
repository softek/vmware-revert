# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vmware-revert/version"

Gem::Specification.new do |s|
  s.name        = "vmware-revert"
  s.version     = VMWareRevert::VERSION
  s.authors     = ["joseph.andaverde"]
  s.email       = ["joseph.andaverde@softekinc.com"]
  s.homepage    = ""
  s.summary     = %q{Reverts a virtual machine}
  s.description = %q{Reverts a virtual machine to the most current snapshot.}

  s.rubyforge_project = "vmware-revert"

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency "rbvmomi"
end
