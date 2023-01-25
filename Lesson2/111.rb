
def valid_integer?(num)
  (num.to_i.to_s == num) && (num.to_i >= 0)
end

def valid_float?(num)
  if valid_integer?(num)
    return true
  elsif (num.to_f.to_s == num) && (num.to_f >= 0)
    return true
  else 
    false
  end
end


p valid_float?("0")