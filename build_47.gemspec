Gem::Specification.new do |s|
  s.name               = 'build_47'
  s.version            = '1.2.0'
  s.default_executable = 'build_47'
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.authors = ['Chris Schroeder']
  s.date = %q{2019-03-04}
  s.description = %q{A simple utility for pushing builds to App47}
  s.email = %q{support@app47.com}
  s.files = ['lib/build_47.rb', 'bin/build_47']
  s.add_runtime_dependency 'rest-client', ['>= 1.6.0']
  s.executables << 'build_47'
  s.homepage = %q{https://github.com/App47/build_47}
  s.require_paths = ['lib']
  s.summary = %q{Pushes an iOS or Android build file to App47 for distribution via an App store.}
end
