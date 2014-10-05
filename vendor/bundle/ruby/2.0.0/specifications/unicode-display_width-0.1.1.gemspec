# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "unicode-display_width"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jan Lelis"]
  s.date = "2011-01-05"
  s.description = "This gem adds String#display_size to get the display size of a string using EastAsianWidth.txt."
  s.email = "mail@janlelis.de"
  s.extra_rdoc_files = ["README.rdoc", "LICENSE.txt"]
  s.files = ["README.rdoc", "LICENSE.txt"]
  s.homepage = "http://github.com/janlelis/unicode-display_width"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Support for east_asian_width string widths."
end
