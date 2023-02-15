def left_digit(num)
	num.scan(/[1234567890]/).shift.to_i
end
p left_digit("U//DertHe1nflu3nC3")