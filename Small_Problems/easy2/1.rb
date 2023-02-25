# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.
def random_age
  puts "Please enter a name:"
  name = gets.chomp
  user_name = name.empty? ? 'Teddy' : name

  age = rand(20..200)
  
  puts "#{user_name} is #{age} years old!"
end

random_age