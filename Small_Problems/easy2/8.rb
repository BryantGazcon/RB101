puts ">> Please enter an integer greater than 0: "
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product. "
sum_or_product = gets.chomp

if sum_or_product.include?('s')
  puts (0..integer).inject(:+)
else
  puts (1..integer).inject(:*)
end


