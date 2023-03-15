vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
def count_occurrences(arr)
  arr.map(&:downcase).uniq.each do |el|
    puts "#{el} => #{arr.count(el)}"
  end
end

count_occurrences(vehicles)