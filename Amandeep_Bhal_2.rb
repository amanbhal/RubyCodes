=begin
Q2. Given a string of input, return a hash whose keys are words in the string and whose values are the
number of times each word appears. Do not use for-loops. Iterators such as each are permitted. Nonwords
should be ignored. Case should not matter. A word is defined as a string of characters between word boundaries.
(“\b” in a Ruby regexp means matches word boundaries). Example:

count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo"  # => {'doo' => 3, 'bee' => 2}

def count_words(string)
 # your code here
end
=end

def count_words(stri)
  stri.downcase!
  stri.gsub!(/[^0-9a-z\s]/i, '')
  stri.gsub!(/[\s]+/i,' ')
  count = {}
  strLi = stri.split(" ")
  strLi.each { |x| count.has_key?(x)?count[x]+=1:count[x]=1}
  count.each { |x,y| puts "#{x}=>#{y}"}
end
count_words("A man, a plan, a canal -- Panama")
count_words("Doo bee doo bee doo")