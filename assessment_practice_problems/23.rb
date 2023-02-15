# Write a function that maps files to their extension names.
# get array, transform each element, split by period, then select second item from each
def get_extension(arr)
  arr.map{|item| item.split('.')[1]}
end

p get_extension(["code.html", "code.css"])