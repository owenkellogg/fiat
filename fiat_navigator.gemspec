Gem::Specification.new do |s|
  s.name               = "fiat_navigator"
  s.version            = "0.0.2"
  s.default_executable = "fiat_navigator"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steven Zeiler"]
  s.date = %q{2012-04-16}
  s.description = %q{A silver and gold to dollars translator}
  s.email = %q{nick@quaran.to}
  s.files = ["Rakefile", "lib/fiat_navigator.rb", "lib/fiat_navigator/stash.rb", "lib/fiat_navigator/gold.rb"]
  s.test_files = ["test/test_fiat_navigator.rb", "test/test_stash.rb", "test/test_gold.rb"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A silver and gold to dollars translator}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

