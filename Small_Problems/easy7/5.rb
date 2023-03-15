def staggered_case(str)
  arr = str.chars
  arr.each_with_index.map{|char, i| i.even? ? char.upcase : char.downcase}.join
end

p staggered_case("ignore 77 the 444 numbers")