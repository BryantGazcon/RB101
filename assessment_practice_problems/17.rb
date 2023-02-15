# Write a function that takes two arrays and adds the first element in the first array with the first element 
# in the second array, the second element in the first array with the second element in the second array, etc, etc. 
# Return true if all element combinations add up to the same number. Otherwise, return false.

def puzzle_pieces(a1, a2)
  answers = []
  return false if a1.size != a2.size
  a1.size.times do 
    answers << a1.shift + a2.shift 
  end
return answers.all?{|num| num == answers[0]}
end
p puzzle_pieces([1, 2, 3, 3, 4], [4, 3, 2, 1])