=begin
attr_accessor uses metaprogramming to create getters and setters for object attributes on the fly. Define a method attr_accessor_with_history that provides the same functionality as attr_accessor but also tracks every value the attribute has ever had:

class Foo
 attr_accessor_with_history :bar
end

f = Foo.new     # => #<Foo:0x127e678>
f.bar = 3       # => 3
f.bar = :wowzo  # => :wowzo
f.bar = 'boo!'  # => 'boo!'
f.bar_history # => [nil, 3, :wowzo, 'boo!']

Here are some hints and things to notice to get you started:

·         The first thing to notice is that if we define attr_accessor_with_history in class Class, we can use it as in the snippet above. This is because in Ruby a class is simply an object of class Class.
·         The second thing to notice is that Ruby provides a method class_eval that takes a string and evaluates it in the context of the current class, that is, the class from which you're calling attr_accessor_with_history.  This string will need to contain a method definition that implements a setter-with-history for the desired attribute attr_name.
·         #bar_history should always return an Array of elements, even if no values have been assigned yet.
●      Don't forget that the very first time the attribute receives a value, its history array will have to be initialized.
●      Don't forget that instance variables are referred to as @bar within getters and setters.
●      Although the existing attr_accessor can handle multiple arguments (e.g. attr_accessor :foo, :bar), your version just needs to handle a single argument.  However, it should be able to track multiple instance variables per class, with any legal class names or variable names, so it should work if used this way:
class SomeOtherClass attr_accessor_with_history :foo
attr_accessor_with_history :bar
end
●      History of instance variables should be maintained separately for each object instance. that is, if you do:
f = Foo.new
f.bar = 1
f.bar = 2
f = Foo.new
f. bar = 4
f.bar_history
then the last line should just return [nil,4], rather than [nil,1,2,4]
=end

class Class
  def attr_accessor_with_history(attr)
    attr = attr.to_s
    attr_reader attr
    attr_reader attr+"_history"
    class_eval %Q{
def #{attr}=(value)
if(!defined?(@#{attr}_history))
@#{attr}_history = [@#{attr}]
end
@#{attr} = value
@#{attr}_history << value
end
}
  end
end

# Test Code
class Foo
  attr_accessor_with_history :bar
end
c = Foo.new
c.bar = 1
c.bar = 2
print c.bar_history   #should print [nil, 1, 2]
c = Foo.new
c.bar = 4
print c.bar_history   #should print [nil, 4]