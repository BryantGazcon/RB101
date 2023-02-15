# Write two functions:

# to_array(), which converts a number to an array of its digits.
# to_number(), which converts an array of digits back to its number.

def to_array(num)
	num.to_s.chars.map(&:to_i)
end

def to_number(arr)
  arr.join('').to_i
end

p to_number([2,4,5])