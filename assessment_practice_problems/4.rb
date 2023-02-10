def inches_to_feet(inches)
	inches < 12 ? 0 : inches / 12
end

p inches_to_feet(10)