# Build a program that displays when the user will retire and how many years 
# she has to work till retirement.
print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

work_years_to_go = retire_age - age
retire_year = Time.now.year + work_years_to_go

puts "It's #{Time.now.year}. You will retire in #{retire_year}. " +
      " You have only #{work_years_to_go} years of work to go!"