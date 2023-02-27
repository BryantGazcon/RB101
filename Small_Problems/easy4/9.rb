def signed_integer_to_string(num)
  result = [num].join
  return result if result == '0'
  result.prepend('+') if !result.include?('-')
  
  result
end

p signed_integer_to_string(4321)