def leading_substrings(str)
  str_arr = []
  str.size.times do |i|
    str_arr << str[0..i]
  end
  str_arr
end

p leading_substrings('abcde')


