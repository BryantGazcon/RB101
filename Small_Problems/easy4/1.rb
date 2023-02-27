def century(century)
  year = (century.to_f / 100).ceil
  new_year = year.to_s
  ordinal(new_year)
end

def ordinal(century_year)
  if century_year.end_with?('11','12','13')
    "#{century_year}th"
  elsif century_year.end_with?('1')
    "#{century_year}st"
  elsif century_year.end_with?('2')
    "#{century_year}nd"
  elsif century_year.end_with?('3')
    "#{century_year}rd"
  else
    "#{century_year}th"
  end
end

p century(20)

