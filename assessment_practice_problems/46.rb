a = 7.1              # a is initialized and references object with value of 7.1
array = [1, 2, 3]   # array is initialized and references array object

array.each do |a|   # block is defined with block paraneter a variable
  a += 1            # a is assigned to each element of array plus one, because of variable shadowing
end                 # outer a is not affected so puts a is 7.1

puts a