# example of variable scope & reassignment changing reference of objects

var = "bry"           # variable var is initialized storing reference to object with value bry 

def greeting(name)    # at this point, var and name both point to same object
  name += "hello"     # name is reassigned, unplugging the binding of both var/name, name now pointing to new object, but var still pointing to old object 'bry'
end

p greeting(var)       # method invocation with variable var passed in as argument to parameter variable

p var                 # this outputs 'bry' since var was never assigned to new object