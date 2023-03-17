def reverse_words(str)
  str.split.map{|word| word.length >= 5 ? word.reverse : word }.join(' ')
end

p reverse_words('Launch School')