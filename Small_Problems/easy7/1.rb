def interleave(arr1, arr2)
  total_size = arr1.size + arr2.size
  arr = []
  until arr.size == total_size
    arr << arr1.shift
    arr << arr2.shift
  end
  arr  
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']