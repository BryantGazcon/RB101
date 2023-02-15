def equal(a, b, c)
	arr = [a,b,c]
  return 3 if arr.uniq.size == 1
  return 2 if arr.uniq.size == 2 
  return 0 if arr.uniq.size == 3
end