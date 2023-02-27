DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(str)
  if str.include?('+') 
    new_str = str.delete_prefix('+')
  elsif str.include?('-')
    new_str = str.delete_prefix('-')
  else
    new_str = str
  end

  digits = new_str.chars.map {|char| DIGITS[char]}

  value = 0
  digits.each {|digit| value = 10 * value + digit}

  if str.include?('-')
    value = value * -1
  end

  value
end

p string_to_integer('4321')