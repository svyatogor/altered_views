# -*- encoding: utf-8 -*-
require File.expand_path("../lib/altered_views/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "altered_views"
  s.version     = AltereddViews::VERSION
  s.platform    = Gem::Platform::RUBY
	s.date 				= %q{2010-12-24}
  s.authors     = ["Sergey Kuleshov"]
  s.email       = ["svyatogor@gmail.com"]
  # s.homepage    = "http://rubygems.org/gems/altered_views"
  s.summary     = "Inherit and extend rails views in OOP manner"
  s.description = "Altered views allows one to inherit views from pluged in engines and extend them by operating on the DOM model."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "altered_views"

  s.add_runtime_dependency "rails", "~> 3.0.0"
  s.add_runtime_dependency "nokogiri", "~> 1.4"
  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'

  s.extra_rdoc_files = [
    "Readme.rdoc",
		"COPYRIGHT"
  ]
end
