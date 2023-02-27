def multisum(num)
  total_numbers = []
  multiples = [3,5]

  multiples.each do|el|
    0.step(num, el){|i| total_numbers.push(i)}
  end
  
  sum_total = total_numbers.uniq.inject(:+)
  sum_total
end

p multisum(1000)