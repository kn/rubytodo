class Model < ActiveRecord::Base
  def self.method1
    todo "calculate rank"
  end

  def method2
    if true 
      todo "implement true case"
    else
      todo "implement false case"
    end
  end
end
