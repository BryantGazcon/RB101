# Create a function that returns the index of the first vowel in a string.
def first_vowel(str)
	str.index(/[aeiouAEIOU]/)
end
p first_vowel("hello")

# alternate method, i stands for case-insensitivuty flag so will match lowecase 
# and uppercase
def first_vowel(str)
  str.index(/[aeiou]/i)
end