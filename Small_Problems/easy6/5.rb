def reverse(arr)
  size = arr.size
  new_array = []
  until new_array.size == size
    new_array.push(arr.pop)
  end
  new_array
end

p reverse(%w(a b e d c))