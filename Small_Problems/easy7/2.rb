def letter_case_count(str)
  case_count = {}
  
  case_count[:lowercase] = str.count("a-z")
  case_count[:uppercase] = str.count("A-Z")
  case_count[:neither] = str.count("^A-Za-z")

  case_count 
end
p letter_case_count("abCdef 123")