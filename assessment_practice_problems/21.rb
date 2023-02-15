# Create a function to return the amount of potatoes there are in a string.
def potatoes(potato)
  potato.scan("potato").size

end

p potatoes("potatoapple")