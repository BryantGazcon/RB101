def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
    end
    
    true
end


def is_an_ip_number?(str)
  if (0..255).cover?(str.to_i.to_s == str)
    true
  else
    false
  end
end

p dot_separated_ip_address?("10.9.6.10")
