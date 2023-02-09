def kaprekar?(k)
  no_of_digits = k.to_s.size  #3
  square = (k ** 2).to_s #88209
  
  second_half = square[-no_of_digits..-1] #209
  first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2] #88
  
  k == first_half.to_i + second_half.to_i
end
p kaprekar?(297)