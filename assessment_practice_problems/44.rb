a = 7                     # variable a initialized and references object with value of 7
array = [1, 2, 3]         # variable array initialized and references array object

array.each do |element|   # within this block, a is reassigned to each element
  a = element             # since variables defined outside of block are available inside
end                       # block, a will reference the new reassignment object which in this case is 3

puts a                    # output 3