# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dmenu}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gary Friedman"]
  s.date = %q{2009-05-13}
  s.description = %q{Simple Ruby wrapper around DMenu}
  s.email = %q{friedmagb@gmail.com}
  s.extra_rdoc_files = ["lib/dmenu.rb", "README"]
  s.files = ["lib/dmenu.rb", "README", "dmenu.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/friedmag/dmenu}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "DMenu", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{dmenu}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Simple Ruby wrapper around DMenu}
  s.test_files = []

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
