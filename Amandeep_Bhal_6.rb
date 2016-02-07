=begin
Q6. Create a class Dessert with getters and setters for name and calories.  Define instance methods healthy?,
which returns true if a dessert has less than 200 calories, and delicious?, which returns true for all desserts.
Create a class JellyBean that extends Dessert, and add a getter and setter for flavor. Modify delicious? to return
false if the flavor is black licorice (but delicious? should still return true for all other flavors and for all
non-JellyBean desserts). Here is the framework (you may define additional helper methods):

class Dessert
 def initialize(name, calories)
   # YOUR CODE HERE
 end

 def healthy?
   # YOUR CODE HERE
 end

 def delicious?
   # YOUR CODE HERE
 end
end

class JellyBean < Dessert
 def initialize(name, calories, flavor)
   # YOUR CODE HERE
 end

 def delicious?
   # YOUR CODE HERE
 end
end
=end

class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    if @calories<200
      return true
    else
      return false
    end
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end

  def delicious?
    if @flavor=="black licorice"
      return false
    else
      super
    end
  end
end

fudge = Dessert.new("Choc Fudge",250)
cake = Dessert.new("Pineapple Cake", 130)
jb1 = JellyBean.new("Apple JB", 230, "Apple")
jb2 = JellyBean.new("Licorice", 150, "black licorice")
puts "Is fudge delicious -> #{fudge.delicious?}"
puts "Is fudge healthy -> #{fudge.healthy?}"
puts "Is cake delicious -> #{cake.delicious?}"
puts "Is cake healthy -> #{cake.healthy?}"
puts "Is JellyBean1 delicious -> #{jb1.delicious?}"
puts "Is JellyBean1 healthy -> #{jb1.healthy?}"
puts "Is JellyBean2 delicious -> #{jb2.delicious?}"
puts "Is JellyBean2 healthy -> #{jb2.healthy?}"