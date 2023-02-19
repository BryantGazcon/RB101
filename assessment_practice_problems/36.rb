# example of variable scope & variables referencing same objects
var = "bry"           # variable var is initialized storing reference to object with value bry 

def greeting(name)    # at this point, var and name both point to same object
  name << " hello"    # no reassignment, rather destructive method, both name and var still point to same object, modification is conveyed in either or
end

p greeting(var)       # method invocation with variable var passed in as argument to parameter variable

p var                 # this outputs 'bry hello' since the reference to the same object that var and
                      # name share was never broken through reassignment