require 'object'
require 'ruby_parser'

class RubyTodo
  def self.list target
    files = if File.file? target
      [target]
    elsif File.directory? target
      puts "Scanning todos in #{target} ..."
      files = Dir.glob File.join(target, "**", "*")
    else
      abort "#{target} does not exist."
    end
    files.reject { |f| f !~ /\.rb\Z/ }.each do |f|
      todos = scan_todos f
      puts f unless todos.nil? || todos.empty?
      todos.each { |todo| puts "* #{todo}" }
    end
  end

  def self.scan_todos file_path
    parser = RubyParser.new
    ptree = parser.parse File.open(file_path, 'r').read
    extract_todos ptree
  end

  protected

  def self.extract_todos node
    return [] unless node.is_a? Sexp
    todos = node.find_nodes(:call).map { |n| extract_todo_msg_from_args(n[3]) if n[2] == :todo }
    (todos | node.collect { |n| extract_todos n }).flatten.compact 
  end

  def self.extract_todo_msg_from_args node
    return nil unless node.node_type && node.node_type == :arglist
    return nil unless node[1] && node[1].node_type == :str
    node[1].value
  end
end
