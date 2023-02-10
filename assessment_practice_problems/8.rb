# Create a function that takes two parameters (start, stop), and returns the sum of 
# all even numbers in the range.

def sum_even_nums_in_range(start, stop)
  (start..stop).select(&:even?).inject(:+)
end

p sum_even_nums_in_range(10, 20)