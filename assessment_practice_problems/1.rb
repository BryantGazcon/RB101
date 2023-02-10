#Given a sorted array of numbers, remove any numbers that are divisible by 13. 
#Return the amended array.

def unlucky_13(nums)
  nums.reject{|num| num % 13 == 0}
end #reject/removes any numbers that meet block condtion

p unlucky_13([53,182,435,591,637])