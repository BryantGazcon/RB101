options = %w(1st 2nd 3rd 4th 5th last)
numbers = []

options.each do |choice|
  puts "Enter the #{choice} number:"
  input = gets.chomp
  numbers << input
end

last_num = numbers.pop

if numbers.include?(last_num)
  puts "#{last_num} appears in #{numbers}."
else
  puts "#{last_num} does not appear in #{numbers}."
end

