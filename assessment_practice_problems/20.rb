# Given an integer array, transform it into a mirror.
def mirror(arr)
	mirror = arr.take(arr.size - 1)
  arr.concat(mirror.reverse)
end

p mirror([0, 2, 4, 6])

# Alternate method
def mirror(arr)
  arr + arr[0..-2].reverse
end
