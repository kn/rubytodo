require 'todo'

describe Todo do
  before :all do
    cur_path = File.dirname __FILE__
    @file_with_three_todos = File.join(cur_path, "resources/file_with_three_todos.rb")
    @file_without_todos = File.join(cur_path, "resources/file_without_todos.rb")
  end

  describe "#scan_todos" do
    context "todo is present in a file" do
      it "should return todos" do
        todos = Todo.scan_todos @file_with_three_todos
        todos.should_not be_empty
        todos.size.should == 3
      end
    end
    context "todo is not present in a file" do
      it "should return empty array" do
        todos = Todo.scan_todos @file_without_todos
        todos.should be_empty
      end
    end
  end
end
