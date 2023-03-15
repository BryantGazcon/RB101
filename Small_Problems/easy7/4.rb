def swapcase(str)
  str.chars.map{|char| char == char.upcase ? char.downcase : char.upcase}.join
end

p swapcase('Tonight on XYZ-TV')

