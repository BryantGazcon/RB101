def short_long_short(str1, str2)
  short = str1.length > str2.length ? str2 : str1
  long = str1.length > str2.length ? str1 : str2
  short + long + short
end

p short_long_short('', 'xyz')