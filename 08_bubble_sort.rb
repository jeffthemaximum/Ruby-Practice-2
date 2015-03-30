# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5
=begin
describe "#bubble_sort" do
  it "works with an empty array" do
    bubble_sort([]).should == []
  end

  it "works with an array of one item" do
    bubble_sort([1]).should == [1]
  end

  it "sorts numbers" do
    bubble_sort([5, 4, 3, 2, 1]).should == [1, 2, 3, 4, 5]
  end
end
=end

def bubble_sort(arr)

  sorted = false
  
  while !sorted
    sorted = true
    
    (0..arr.length - 2).each do |i|
      if (arr[i] > arr[i+1])
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end
  return arr

end

puts bubble_sort([])