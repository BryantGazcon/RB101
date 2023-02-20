# Get middle of character of a string if odd, if even the select the two most centered characters
def center_of(str)
  char = str.length.odd? ? str[str.length/2] : str[(str.length/2).pred..(str.length/2)]
  return char
end

p center_of('x')