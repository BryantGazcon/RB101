a = 7             # a is initialized and references object with value of 7

def my_value(a)   # first a and parameter a now point to same object with value 7
  a += 10         # parameter a is reassigned to value of 17, however, original a still points 7 since
end               # reassignment doesnt mutate instead breaks binding

my_value(a)       # method invocation with variable passed in as argument
puts a            # due to reassignment which is not mutation and the fact that parameter
                  # a variable is only avaialable within method a still points to 7