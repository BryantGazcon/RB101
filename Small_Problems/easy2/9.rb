name = 'Bob'          # name is initialized and stores reference to string object with value 'bob'
save_name = name      # save_name initialized and now points to same object as name which is 'bob' 
name = 'Alice'        # name is then reassigned to 'alice', original name variable is disconnected from object 'bob'
puts name, save_name  # outputs alice  and bob


name = 'Bob'          # name is initialized and stores reference to string object with value 'bob'
save_name = name      # save_name variable and name now store reference to same string object with value 'bob'
name.upcase!          # object is modified by destructive method so no new objects are created, original object is modified in place
puts name, save_name  # outputs BOB, all references are modified