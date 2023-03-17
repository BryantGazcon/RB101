def fizzbuzz(a, b)
  result = []
  (a..b).each do |num|
    if num % 3 == 0 && num % 5 == 0
      result << "FizzBuzz"
    elsif num % 3 == 0
      result << "Fizz" 
    elsif num % 5 == 0
      result << "Buzz"
    else
      result << num
    end
  end
  result.join(', ')
end

p fizzbuzz(1,15)