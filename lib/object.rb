class Object
  def todo msg
    unless msg and msg.is_a?(String)
      raise "todo method requires you to pass a todo description as a first argument"
    end
  end

  def self.todo msg
    unless msg and msg.is_a?(String)
      raise "todo method requires you to pass a todo description as a first argument"
    end
  end
end
