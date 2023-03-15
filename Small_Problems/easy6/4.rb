def reverse!(arr)
  empty = []
  until arr == []
    empty.push(arr.shift)
  end

  until empty == []
    arr.push(empty.pop)
  end
  arr
end

p reverse([])