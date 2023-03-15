

def staggered_case(str)
  arr = str.chars
  boolean = true
  arr.each do |char|
    next char if char.match?(/[0-9]/)
    
    if boolean
      char.upcase!
    else
      char.downcase!
    end

    boolean = !boolean
  end

  arr.join
end

p staggered_case('ignore 77 the 444 numbers')