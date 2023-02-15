# An array is special if every even index contains an even number and every odd index 
# contains an odd number. Create a function that returns true if an array is special, 
# and false otherwise.
def is_special_array(arr)
arr.each_with_index.any?{|x, i| (x.odd? && i.even? || i.odd? && x.even?)} == false 
end
p is_special_array([2, 7, 9, 1, 6, 1, 6, 3])

# Alternate method
def is_special_array(arr)
	arr.each_with_index.all? { |n, i| n.even? == i.even? }
end

=begin
when given this array for example: [2, 7, 9, 1, 6, 1, 6, 3]
  number is 2 and index is 0 so n.even? is true and i.even? is true
  meaning that n.even? == i.even? is equal to true (true == true)

  number is 7 and index is 1 so n.even? is false and i.even? is false
  so n.even? == i.even? is equal to true
      false  == false   which is true

  number is 9 and index is 2 so n.even? is false and i.even? is true
  n.even? == i.even? is false
  false       true == false
=end

# my method refactored
def is_special_array(arr)
  arr.each_with_index.any?{|x, i| x.even? && i.even? }
end

# works in same way as above example