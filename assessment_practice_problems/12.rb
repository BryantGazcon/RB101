# Write a function that takes a two-digit number and determines if it's the 
# largest of two possible digit swaps.
def largest_swap(num)
  original_num = num.to_s
  flipped_num = original_num[1] + original_num[0]
  original_num.to_i >= flipped_num.to_i
end

p largest_swap(14)

# Alternate solution
def largest_swap(num)
  num >= num.to_s.reverse.to_i ? true : false
end

