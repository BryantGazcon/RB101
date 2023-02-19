a = 7                 # variable a is initialized and assigned object with value 7
array = [1, 2, 3]     # array variable is initialized and assigned reference array object

def my_value(ary)     # ary and array now reference the same array object
  ary.each do |b|
    a += b            # a is not visible inside the method because a was first initialized outside method
  end                 # as we know variables initialized within method are only available within method
end

my_value(array)      # method invocation with array passed as argument
puts a