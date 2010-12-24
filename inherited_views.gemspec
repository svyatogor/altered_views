# -*- encoding: utf-8 -*-
require File.expand_path("../lib/inherited_views/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "inherited_views"
  s.version     = InheriteddViews::VERSION
  s.platform    = Gem::Platform::RUBY
	s.date 				= %q{2010-12-24}
  s.authors     = ["Sergey Kuleshov"]
  s.email       = ["svyatogor@gmail.com"]
  # s.homepage    = "http://rubygems.org/gems/inherited_views"
  s.summary     = "Inherit and extend rails views in OOP manner"
  s.description = "Inherited views allows one to inherit views from pluged in engines and extend them by operating on the DOM model."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "inherited_views"

  s.add_runtime_dependency "rails", "~> 3.0.0"
  s.add_runtime_dependency "nokogiri", "~> 1.4"
  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'

  s.extra_rdoc_files = [
    "Readme.markdown"
  ]
end
