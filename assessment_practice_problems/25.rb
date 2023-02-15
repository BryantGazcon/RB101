# Create a function that returns the minimum number of removals to make the sum of all 
# elements in an array even.
def minimum_removals(arr)
  arr.inject(:+).odd? ? 1 : 0
end

p minimum_removals([5, 7, 9, 11])