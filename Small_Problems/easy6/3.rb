def find_fibonacci_index_by_length(num_of_digits)
  fibonacci_arr = [1,1,2]
  loop do
    next_num = fibonacci_arr.last + fibonacci_arr[-2]
    fibonacci_arr.push(next_num)
    break if fibonacci_arr[-1].digits.size == num_of_digits
  end
fibonacci_arr.index(fibonacci_arr[-1]) + 1
end

p find_fibonacci_index_by_length(10)