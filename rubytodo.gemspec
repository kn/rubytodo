require File.join(File.dirname(__FILE__), 'lib', 'rubytodo', 'version')

Gem::Specification.new do |s|
  s.name = "rubytodo"
  s.version = ::RubyTodo::VERSION
  s.authors = ["Katsuya Noguchi"]
  s.email = ["katsuya.noguchi@gmail.com"]
  s.homepage = "https://github.com/kn/rubytodo"
  s.description = "RubyTodo allows you to have in-code todos and scan them to view the todos as a list"

  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.summary = "RubyTodo allows you to have in-code todos and scan them to view the todos as a list"

  s.add_dependency 'ruby_parser', '~> 2.3.0'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rdoc'

  s.executables = %w(rubytodo)
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md Rakefile bin/rubytodo) + Dir.glob("{lib}/**/*")
end
