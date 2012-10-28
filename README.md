## RubyTodo

How do you manage todos in your code base? Usually people use comments like `# TODO` to specify todos in the code base and then use `grep '# TODO'` to grab them.

With rubytodo gem you can specify your todo anywhere in your code with `todo "todo description"` and then you can list all todos with a command `todo`.

## Installation

```ruby
gem install 'rubytodo'
```

## Quick Start

Add todo in your ruby file:
```ruby
require 'rubytodo'

class MyClass
  def my_method
    todo "implement my_method"
  end
end
```

Then list todos in all ruby files under a given root folder:
```
$ rubytodo lib
Scanning todos in lib ...
lib/my_class.rb
* implement my_method
```
