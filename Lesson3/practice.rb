def non_duplicated_values(values)
  values.find_all{|num| values.count(num) == 1}
end

p non_duplicated_values([1,2,2,3,3,4,5])