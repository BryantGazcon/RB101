# Create a function that returns only strings with unique characters.

def filter_unique(arr)
  arr.select{|item| item.chars.uniq == item.chars}
end

p filter_unique(["abb", "abc", "abcdb", "aea", "bbb"])
#=> ['abc']