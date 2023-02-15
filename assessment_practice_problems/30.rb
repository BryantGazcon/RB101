def removeEmptyArrays(arr)
	arr.select{|x| !x.is_a?(Array)}
end
p removeEmptyArrays([1, 2, [], 4])