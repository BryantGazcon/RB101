# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.
# Below is further exploration

ONE_SQFOOT_TO_SQINCH = 144
ONE_SQINCH_TO_SQCM = 6.4516

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

square_feet = length * width
square_inch = (square_feet * ONE_SQFOOT_TO_SQINCH).round(2)
square_cm = (square_inch * ONE_SQINCH_TO_SQCM).round(2)

puts "The area of the room is #{square_feet} square feet " + 
     "(#{square_inch} square inches or #{square_cm} square centimeters)"