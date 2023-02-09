def array_of_fixnums?(array)
  array.all?{|element| element.is_a?(Fixnum)} ? true : false
end


p array_of_fixnums?([1,2,3])