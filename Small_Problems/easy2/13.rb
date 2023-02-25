operators = [:+, :-, :*, :/, :%, :**]
numbers = []

puts "Enter the first number"
input1 = gets.chomp.to_i
numbers << input1

puts "Enter the second number"
input2 = gets.chomp.to_i
numbers << input2

operators.each do |op|
  result = numbers.inject(op)
  puts "#{numbers[0]} #{op} #{numbers[1]} = #{result}"
end

