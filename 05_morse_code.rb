# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
#
# Difficulty: 2/5

#morse_encode("cat in hat").should == "-.-. .- -  .. -.  .... .- -"

MORSE_CODE = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
}

def morse_encode(str)

  str = str.split
  morse_array = []
  
  (0..str.length-1).each do |i|
    morse_array << morse_encode_word(str[i])
  end
  return morse_array.join("  ")
end

def morse_encode_word(word)
  code_array = []
  word.each_char do |char|
    MORSE_CODE.each do |letter, code|
      if (char == letter)
        code_array << code
      end
    end
  end
  return code_array.join(" ")
end

puts(morse_encode("jeff is cool"))