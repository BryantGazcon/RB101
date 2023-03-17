def leading_substrings(str, initial)
  str_arr = []
  str.size.times do |i|
    str_arr << str[initial..i]
  end

  str_arr
end

def substrings(str)
  start = 0
  results = []
  str.chars do |char|
    results.concat(leading_substrings(str, start))
    start += 1
  end
  results.delete('')
  results
end


p substrings('madam')