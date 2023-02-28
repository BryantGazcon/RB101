def digit_list(num)
  num.to_s.split('').map(&:to_i)
end

p digit_list(444)

