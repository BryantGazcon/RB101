# Given a two digit number, return true if that 
# number contains one even and one odd digit.
def one_odd_one_even(num)
 arr = num.to_s.split('')
 arr.map!{|x| x.to_i}
 arr.all?(&:odd?) || arr.all?(&:even?) ? false : true
end

p one_odd_one_even(22)

# Alternative method
def one_odd_one_even(n)
	n.to_s.chars.count{ |c| c.to_i.odd? } == 1
# number -> string -> split into characters -> count how many odd numbers there are
# -> if odd numbers == 1 then true otherwise false
end
