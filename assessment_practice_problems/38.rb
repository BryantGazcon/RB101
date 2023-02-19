a = 7                 # variable a is initialized assigned to reference objct with value 7

def my_value(b)       # a and b now point to object with value 7
  b += 10             # b is reassigned to new object with value 17, a still points to original object reference at the time of puts
end                   # reassignment does not mutate the variable

my_value(a)          # my_value method inovcation with a passed as an argument
puts a               # a is 7