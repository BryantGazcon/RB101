def remove_vowels(arr)
  arr.map{|str| str.delete("aeiouAEIOU")}
end

p remove_vowels(%w(ABCE AEIOU XYZ ))