require 'rubytodo'

describe Object do
  describe "#todo" do
    it "should define todo method" do
      Object.instance_methods.include?(:todo).should be_true
    end
    it "should raise an error if todo is passed without an argument" do
      lambda { Object.new.todo }.should raise_error
    end
    it "should raise an error if todo is passed non string argument" do
      lambda { Object.new.todo 1 }.should raise_error
    end
    it "should not raise error if todo is passed a string argument" do
      lambda { Object.new.todo "todo" }.should_not raise_error
    end
  end

  describe "#self.todo" do
    it "should define todo method" do
      Object.singleton_methods.include?(:todo).should be_true
    end
    it "should raise an error if todo is passed without an argument" do
      lambda { Object.todo }.should raise_error
    end
    it "should raise an error if todo is passed non string argument" do
      lambda { Object.todo 1 }.should raise_error
    end
    it "should not raise error if todo is passed a string argument" do
      lambda { Object.todo "todo" }.should_not raise_error
    end
  end
end
