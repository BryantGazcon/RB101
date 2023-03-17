def sum_of_sums(arr)
  pairs = []
  arr.size.times do |i|
    pairs << arr[0..i] 
  end
  pairs.flatten.inject(:+)
end

p sum_of_sums([1,2,3,4,5])