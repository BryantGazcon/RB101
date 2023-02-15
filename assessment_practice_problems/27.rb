# Create a function that takes in a year and returns the correct century
def century(year)
century = (year/ 100.0 ).ceil
century == 21 ? "#{century}st century" : "#{century}th century"
end

p century(2005)