Gem::Specification.new do |s|
  s.name               = 'build_47'
  s.version            = '0.1.3'
  s.default_executable = 'build_47'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.authors = ['Andrew Glover']
  s.date = %q{2012-07-11}
  s.description = %q{A simple Ruby utility for pushing builds to App47}
  s.email = %q{aglover@app47.com}
  s.files = ['lib/build_47.rb', 'bin/build_47']
  s.add_runtime_dependency 'rest-client', ['>= 1.6.0']
  s.executables << 'build_47'
  s.homepage = %q{http://rubygems.org/gems/hola}
  s.require_paths = ['lib']
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Pushes an iOS or Android build file to App47 for distribution via an App store.}

  if s.respond_to? :specification_version then
    s.specification_version = 3
    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end