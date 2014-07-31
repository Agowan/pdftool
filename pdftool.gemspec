# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'pdf/version'

Gem::Specification.new do |s|
  s.name        = "pdftool"
  s.version     = Pdf::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Niklas Lundgren"]
  s.email       = [""]
  s.license     = "LICENSE"
  s.homepage    = "http://github.com/Awogan/pdftool"
  s.summary     = "Merge existing pdf files and generates pdf files from html"
  s.description = %q(This gem merges existing pdf files on disk to one and
                     generates pdf files from html.
                     It uses java lib itext to accomplish the above.)

  s.rubyforge_project         = "pdftool"

  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md)
  s.require_path = 'lib'
end