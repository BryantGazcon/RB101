# Create a function that takes a string, checks if it has the same number of x's and o's 
# and returns either true or false.
def xo(str)
  str.downcase.count('x') == str.downcase.count('o')
end

p xo("zzoo")