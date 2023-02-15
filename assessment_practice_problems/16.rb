# You are in charge of the barbecue grill. A vegetarian skewer is a skewer that has only 
# vegetables (-o). A non-vegetarian skewer is a skewer with at least one piece of meat (-x).
def bbq_skewers(grill)
  vegetarian_skewers = 0 
  non_veg_skewers = 0
  grill.each do |sub_array| 
    !sub_array.include?('-x') ? vegetarian_skewers += 1 : non_veg_skewers +=1
  end
  return vegetarian_skewers, non_veg_skewers
end

p bbq_skewers(["--xo--x--ox--",
"--xx--x--xx--",
"--oo--o--oo--",   
"--xx--x--ox--",
"--xx--x--ox--"])


# Alternate Method
def bbq_skewers(grill) 
	meat = grill.count{ |substring| substring.chars.include?('x') }
  # grill(array with substrings) -> count the subarrays that contain "x" -> delete that
  # total from total grill size leaving with vegetarian skewers
  [grill.size - meat, meat]
end

# Example
array = [1,2,3,4,5]
array.count{|sub_element| sub_elements > 3}
#=> returns 2, it will only the return the amount of elements that meat the condition
