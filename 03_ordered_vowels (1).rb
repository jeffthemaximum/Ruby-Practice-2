# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_words(str)

  str = str.split
  output = []
  str.each do |word|
    if ordered_vowel_word?(word)
      output << word
    end
  end
  puts output.join(" ").inspect
end

def ordered_vowel_word?(word)
  word = word.downcase
  vowels = []
  word.each_char do |char|
    if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u')
      vowels << char.ord
    end
  end
 
  (1..vowels.length-1).each do |i|
    if (vowels[i-1] > vowels[i])
      return false
    end
  end  
  return true
end

puts(ordered_vowel_words("this is a test of the vowel ordering system"))
