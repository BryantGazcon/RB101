a = 7              # variable a initialized and references immutable object with value 7

def my_value(b)    # parameter variable b and a at this point reference same object with value 7
  b = a + a        # b is then reassigned, b variable is bound to new object, a references original object
end             

my_value(a)       # method invocation with variable a passed in as argument
puts a            # outputs undefined local variable or method 'a' because within the method a
                  # was never initialized and within method cannot access anything outside of method