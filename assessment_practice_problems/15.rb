def shortest_distance(txt)
  num = txt.split(',').map(&:to_i)
  Math.sqrt((num[2] - num[0])**2 + (num[3]-num[1])**2).round(2)
end
p shortest_distance("-5,2,3,1")

# shortcut for transforming every element of array into integer
# array.map(&:to_i)

# alternate method
def shortest_distance(txt)
	x1, y1, x2, y2 = txt.split(',').map(&:to_f)
	Math.sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2)).round(2)
end