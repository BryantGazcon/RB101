a = "Xyzzy"     # a is initialized and references object with string value

def my_value(b) # b and a now point to same object "Xyzzy"
  b[2] = '-'    # destructive method, all references to object will see modification
end

my_value(a)    # method invocation with a passed in as argument
puts a         # Xy-zy"