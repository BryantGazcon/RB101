def halvsies(arr)
  new_arr = []
  mid = (arr.size / 2.0).ceil
  
  new_arr << arr[0..(mid - 1)]
  new_arr << arr[mid..-1]
  
  new_arr
end

p halvsies([ ])
