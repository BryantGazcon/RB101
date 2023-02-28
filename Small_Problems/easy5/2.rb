def time_of_day(num)

  if num.between?(0,1439)
    hr_min = num.divmod(60)
    return format("%02d:%02d",hr_min[0],hr_min[1])
  elsif num > 1439
     hr_min = (num % 1440).divmod(60)
     return format("%02d:%02d",hr_min[0],hr_min[1])
  elsif num.between?(-1, -1439)
    hr_min = (-1* num).divmod(60)
    return format("%02d:%02d",hr_min[0],hr_min[1])
  else
    hr_min = ((-1 * num) % 1440).divmod(60)
    return format("%02d:%02d",(23 - hr_min[0]),(60 - hr_min[1]))
  end
end

p time_of_day(35)