def truncate(str)
  number_of_full_lines = str.length / 80
  array = []
  number_of_full_lines.times do 
    line = str.slice(0..79)
    last_space = line.rindex(' ')
    if last_space.nil? || last_space == 79
      array << line
    else
      line = str.slice!(0..last_space)
      array << line
    end
  end
  line = str.slice!(0..79)
  array << line
  string = array.each_with_index do |el, idx| 
    puts "|#{array[idx]} "
  end
  return string
end

def print_in_box(str)
horizontal_line = "+#{ '-' * (80 )}+"
empty_line = "|#{ ' ' * (80)}|"


puts horizontal_line
puts empty_line
truncate(str)
puts empty_line
puts horizontal_line
end

print_in_box("Sometimes we make the process more complicated than we need to. We will never make a journey of a thousand miles by fretting about how long it will take or how hard it will be. We make the journey by taking each day step by step and then repeating it again and again until we reach our destination. No matter what is wrong one will awlaus push through")
