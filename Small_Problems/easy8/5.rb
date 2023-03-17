
def pairs(arr)
  return 0 if arr.empty?
  occurences = {}

  arr.each do |num|
    occurences[num] = arr.count(num)
  end

  pairs = []
  occurences.each do |num, count|
     pair = count >= 2 ? (count / 2) : 0
     pairs.push(pair)
  end
  pairs.inject(:+)
end


p pairs([]) == 0
p pairs([54]) == 0