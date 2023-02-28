def word_sizes(str)
  str_arr = str.split.map{|el| el.length}
  uniq_arr = str_arr.uniq

  uniq_arr.to_h{|i| [i, str_arr.count(i)]}
end

p word_sizes('')