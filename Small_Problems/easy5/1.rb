def ascii_value(str)
  arr = []
  str.chars.each{|el| arr << el.ord} 
  arr.sum
end

p ascii_value('a')