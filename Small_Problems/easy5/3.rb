def after_midnight(str)
  hr_min = str.split(':').map(&:to_i)
  if hr_min.include?(24 && 0)
    return (1440 % 24)
  end

  total_minutes = (hr_min[0] * 60) + hr_min[1]

  return total_minutes
end

def before_midnight(str)
  hr_min = str.split(':').map(&:to_i)
  if hr_min.include?(24 && 0)
    return (1440 % 24)
  end

  total_minutes = (hr_min[0] * 60) - hr_min[1]

  return total_minutes
end

p after_midnight('15:34')