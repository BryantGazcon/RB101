array = [1, 2, 3]           # variable array is initialized and assigned to array object

array.each do |element|     # block is defined 
  a = element               # a is initialized within block so that means that a is only accessible within block
end

puts a                      # undefined variable or method 'a'