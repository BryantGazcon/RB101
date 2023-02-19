a = "Xyzzy"     # variable a is initialized and references object with string value 'Xyzzy'

def my_value(b) # at this point parameter variable b and a both reference same object
  b = 'yzzyX'   # b is then reassigned to different value, since reassignment is non-mutating, b is 
end             # instead references new object and a references original object

my_value(a)   # method invocation with local variable a passed in as argument
puts a        # outputs Xyzzy