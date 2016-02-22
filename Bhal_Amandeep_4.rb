=begin
Adapt your palindrome solution so that it works on Enumerables. That is:
[1,2,3,2,1].palindrome?   # => true
(It is not necessary for the collection's elements to be palindromes themselves - only that the top-level
collection be a palindrome.)  Although hashes are considered Enumerables, your solution does not need to make
sense for hashes (though it should not produce an error).
=end

module Enumerable
  def palindrome?
    if self.to_a.respond_to?(:reverse)
      self.to_a == self.to_a.reverse
    else
        false
    end
  end
end

# Test Cases
puts [1,2,2,1].palindrome?
puts [1,2,3,4].palindrome?
