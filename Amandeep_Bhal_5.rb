=begin
Q5. An anagram is a word obtained by rearranging the letters of another word. For example, “rats”, “tars” and
“star” are an anagram group because they are made up of the same letters. Given an array of strings, write a
method that groups them into anagram groups and returns the array of groups. Case does not matter in classifying
string as anagrams (but case should be preserved in the output), and the order of the anagrams in the groups does
not matter. Example:

# input: ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
#  => output:  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]
# HINT: you can quickly tell if two words are anagrams by sorting their
#  letters, keeping in mind that upper vs lowercase doesn't matter

def combine_anagrams(words)
 #   <YOUR CODE HERE>
end
=end

def combine_anagrams(words)
  indexRemaining = []
  for i in 0...words.length
    indexRemaining += [i]
  end
  result = Array.new
  for i in 0...words.length
    if indexRemaining.include?(i)
      temp = [words[i]]
      indexRemaining.delete(i)
      for j in i+1...words.length
        if isAnagram(words[i],words[j])
          temp += [words[j]]
          indexRemaining.delete(j)
        end
      end
      result += temp
    end
  end
  return result
end

def isAnagram(a,b)
  a.downcase!
  b.downcase!
  a = a.chars.sort.join
  b = b.chars.sort.join
  if a==b
    return true
  else
    return false
  end
end

result = combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'])
result.each {|list| puts list}