#Create a function which returns the total of all odd numbers up to and including n. 
#n will be given as an odd number.

def add_odd_to_n(n)
	(1..n).to_a.select(&:odd?).inject(:+)
end

p add_odd_to_n(47)

# array.select(&:odd?) can be used to select odd values from array, ampersand sign is used
# since we are passing the method ':odd?' to a block of the select method

# array.inject(:+) is used to reduce collection of elements to a single value.  :+ represents
# adding all elements of that collection, you can aslo :* multiply all values of that collection

# .inject(num, :+) initial value is initial sum to add to collection of values
