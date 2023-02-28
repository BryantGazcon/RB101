def swap(str)
  str_arr = str.split(' ')

  str_arr.map do |el|
    first = el.slice(0)
    last = el.slice(-1)
    if el.length < 2
      last
    else
      last + el[1..-2] + first
    end
  end
  str_arr.join
end

p swap("a")