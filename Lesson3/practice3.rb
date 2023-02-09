def number_shuffle(number)
array = number.to_s.split('')
digits_array = array.map{|digit| digit.to_i}
unique_array = []
if digits_array.size == 3
  while unique_array.size < 6 do
    shuffled_array = digits_array.shuffle
    unique_array.push(shuffled_array) if !unique_array.include?(shuffled_array)
  end
elsif digits_array.size == 4
  while unique_array.size < 24 do
    shuffled_array = digits_array.shuffle.
    unique_array.push(shuffled_array) if !unique_array.include?(shuffled_array)
  end
end
final_array = unique_array.map{|sub_array| sub_array.join('')}
uniq_array = final_array.map{|element| element.to_i}
return uniq_array.sort
end

p number_shuffle(123)

# simpler way of doing

def number_shuffle(number)
  no_of_combinations = number.to_s.size == 3 ? 6 : 24
  digits = number.to_s.split(//)  #["1","2","3"]
  combinations = []
  combinations << digits.shuffle.join.to_i while #[123]
  combinations.uniq.size != no_of_combinations
  combinations.uniq.sort
end
