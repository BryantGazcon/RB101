limit = 15

def fib(first_num, second_num, lim)
  while first_num + second_num < lim
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(1, 3, limit)
puts "result is #{result}"