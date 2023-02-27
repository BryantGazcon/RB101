def running_total(arr)
  new_array = []
  running_total = arr.shift
  new_array << running_total
  
  until arr == [] 
  running_total += arr.shift
  new_array << running_total
  end
  new_array
end

p running_total([])
