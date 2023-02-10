# Create a function that returns the product of all odd integers in an array.
def odd_product(arr)
	odd_array = arr.select {|num| num.odd?}
  odd_array.inject(1){|sum, num|  sum * num} #another way is odd_array.inject(:*)
end
p odd_product([3,4,1,1,5])

#different way
def odd_product(arr)
	arr.select(&:odd?).inject(:*)
end