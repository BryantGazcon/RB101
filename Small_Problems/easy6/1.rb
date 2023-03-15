DEGREE = "\xC2\xB0"
def dms (num)
  float = num.to_f

  arr = float.to_s.split('.')
  degrees = arr[0]

  arr1 = (arr[1].prepend('.').to_f * 60).to_s.split('.')
  minutes = arr1[0]

  arr2 = (arr1[1].prepend('.').to_f * 60).to_s.split('.')
  seconds = arr2[0]

  p format(%(%02d#{DEGREE}%02d'%02d),degrees, minutes, seconds)
end


dms(0)