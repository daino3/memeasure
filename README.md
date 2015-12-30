## A Simple Memory Profiler

Taken directly from **Ruby Performance Optimization**

### Install Instructions
1. include `gem 'memeasure'`
2. `bundle install`

### Usage Instructions

Say you have the following code:
```ruby

class Person
  def name
    1000.times { "x" * 1024 * 1024 * 10 } # A 10 MB string
  end
end
```

And you want to see how much memory it takes to run your Person#name method. You'd simply have to
pass your code as a block to `Measure.run`

```ruby
require 'memeasure'

class Person

  def name
    Measure.run do
      1000.times { "x" * 1024 * 1024 * 10 }
    end
  end
end

```

Jumping into a rails/irb console, loading this file, and running `Person.new.name` will generate the output in a similar format to:

```
{"2.2.0": {"gc": "enable", "time": 2.1, "gc_count": 10, "memory": "525 MB"}}
```

### Release instructions

1. Bump version in lib/memeasure.rb
2. gem build memeasure.gemspec
3. gem push memeasure-<NEW_VERSION_HERE>.gem
