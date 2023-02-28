def crunch(str)
  split_array = str.split
  chars_array = []
  
  split_array.each do |word|
    chars_array << word.chars
  end

  chars_array.map!{|sub| sub.uniq.join}
  chars_array.join(' ')
end

p crunch(" ")