puts "Please write word or multiple words: "
input = gets.chomp

chars_str = input.chars
chars_str.delete(" ")
puts "There are #{chars_str.length} characters in \"#{input}\"."


