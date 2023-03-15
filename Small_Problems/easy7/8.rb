def multiply_list(arr1, arr2)
  multiplied_arr = arr1.zip(arr2).map{|sub_arr| sub_arr.inject(:*)}
end

p multiply_list([3, 5, 7], [9, 10, 11])