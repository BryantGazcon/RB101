# Create a function that takes two strings and returns either true or false depending on whether 
# they're anagrams or not.
def is_anagram(s1, s2)
	s1.downcase.chars.sort == s2.downcase.chars.sort
end

p is_anagram("Dave Barry", "Ray Adverb")