# A typical car can hold four passengers and one driver, allowing five people to 
# travel around. Given n number of people, return how many cars are needed to seat everyone comfortably.
def cars_needed(n)
	n.remainder(5) == 0 ? n / 5 : n / 5 + 1
end

p cars_needed(0)