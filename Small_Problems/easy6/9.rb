def include?(arr, num)
  arr.map{|el| el == num }.any?(true)
end

p include?([ ], nil)

