def chatroom_status(users)
  if users == []
    "no one online"
  elsif users.size == 1
    "#{users[0]} online"
  elsif users.size == 2
    users[0] + " and " + users[1] + " online"
  else 
    "#{users[0]}, #{users[1]} and #{users[2..-1].size} more online"
  end
end


p chatroom_status(["becky325", "malcom888","hi" ])