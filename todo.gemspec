require File.join(File.dirname(__FILE__), 'lib', 'todo', 'version')

Gem::Specification.new do |s|
  s.name = "todo"
  s.version = ::Todo::VERSION
  s.authors = ["Katsuya Noguchi"]
  s.email = ["katsuya.noguchi@gmail.com"]
  s.homepage = "https://github.com/kn/todo"
  s.description = "Todo allows you to have in-code todos and scan them to view the todos as a list"

  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.summary = "Todo allows you to have in-code todos and scan them to view the todos as a list"

  s.add_dependency 'ruby_parser', '~> 2.3.0'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rdoc'

  s.executables = %w(todo)
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md Rakefile bin/todo) + Dir.glob("{lib}/**/*")
end
