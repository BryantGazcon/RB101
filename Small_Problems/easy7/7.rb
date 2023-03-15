def show_multiplication_average(arr)
  result = (arr.inject(:*).to_f / arr.size)
  format("The result is %0.3f", result)
end

p show_multiplication_average([2,5,7,11,13,17])