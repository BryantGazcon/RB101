def leading_substrings(str, initial)
  str_arr = []
  str.size.times do |i|
    str_arr << str[initial..i]
  end

  str_arr
end

def substrings(str)
  start = 0
  results = []
  str.chars do |char|
    results.concat(leading_substrings(str, start))
    start += 1
  end
  results.delete('')
  results
end

def palindrome(str)
  combos = substrings(str)
  combos.select do |word|
    if word.length >= 2
    word.reverse == word
    end
  end
end

p palindrome('abcd') == []
p palindrome('madam') == ['madam', 'ada']
p palindrome('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindrome('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]