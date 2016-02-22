=begin
Adapt your solution from the HW1 “palindromes” question so that instead of writing palindrome?("foo")you can
 write "foo".palindrome?
=end

class String
  def palindrome?
    str = self.downcase
    str.gsub!(/[^0-9a-z]/i, '')
    pal = str.reverse
    if str==pal
      return true
    else
      return false
    end
  end
end

# Test Cases
puts "foo".palindrome?
puts "aa".palindrome?
puts "A man, a plan, a canal: Panama".palindrome?