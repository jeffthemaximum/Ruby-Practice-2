#require 'debugger'

def letter_count(str)
  
  empty_hash = Hash.new(0)
  
  str.each_char do |char|
    empty_hash[char] += 1 unless char == " "
  end
  
  puts empty_hash

end
letter_count("jeff is the best")



=begin
require '02_letter_count'
require 'rspec'

# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

describe "#letter_count" do
  it "handles a simple case" do
    letter_count("cat").should == {
      "c" => 1,
      "a" => 1,
      "t" => 1
    }
  end

  it "handles multiples of the same letter" do
    letter_count("moon").should == {
      "m" => 1,
      "o" => 2,
      "n" => 1
    }
  end

  it "handles a multi-word case" do
    letter_count("cats are fun").should == {
      "a" => 2,
      "c" => 1,
      "e"=> 1,
      "f" => 1,
      "n" => 1,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "u" => 1
    }
  end
end
=end