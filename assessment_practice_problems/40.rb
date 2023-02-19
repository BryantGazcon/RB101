a = 7             # a is initialized and references object with value pf 7

def my_value(b)  # b now points to (a + 5), a points to 7
  a = b          # a is now reasigned to new object a + 5
end

my_value(a + 5)   # method invocation with variable a passed in as argument
puts a            # outputs 7 because object that a references inside method is not
                  # available outside of method