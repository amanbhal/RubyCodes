=begin
Q1. Write a method that determines whether a given word or phrase is a palindrome, that is, it reads the same
backwards as forwards, ignoring case, punctuation, and nonword characters. (characters that Ruby regexps would
treat as nonword characters, that is, as boundaries between words). Your solution should not use any iteration.
The rubular.com may be helpful in developing appropriate Ruby regular expressions. Methods you might find useful
include: String#downcase, String#gsub and String#reverse. Suggestion: Use method chaining to make your code look
more beautiful. Examples:
palindrome?("A man, a plan, a canal -- Panama")  #=> true
palindrome?("Madam, I'm Adam!")  # => true
palindrome?("Abracadabra")  # => false (nil is also ok)

def palindrome?(string)
 # your code here
end
=end

def palindrome?(str)
  str.downcase!
  str.gsub!(/[^0-9a-z]/i, '')
  pal = str.reverse
  if str==pal
    return true
  else
    return false
  end
end

puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!")  # => true
puts palindrome?("Abracadabra")  # => false (nil is also ok)