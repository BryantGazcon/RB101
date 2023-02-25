# Create a simple tip calculator. The program should prompt for a bill amount and a 
# tip rate. The program must compute the tip and then display both the tip and 
# the total amount of the bill.

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

calculated_tip = (tip / 100.00) * bill

puts "The tip is $#{sprintf("%.2f", calculated_tip)} "
puts "The total is $#{sprintf("%.2f", (bill + calculated_tip))}"

# sprintf method with %f format specifier formats a floating-point number
# as a string with a specified number of decimal places
# sprintf("%.1f", 30.0) => "30.0"
# sprintf("%.2f", 30.0) => "30.00" 
# sprintf("%.3f", 30.0) => "30.000"