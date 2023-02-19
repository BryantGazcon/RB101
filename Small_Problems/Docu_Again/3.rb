# https://ruby-doc.org/core-2.6/doc/syntax/calling_methods_rdoc.html
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]      # 4, 5, 3, 6
end                   # c gets assigned default object and d gets the last object from method invocation

my_method(4, 5, 6)