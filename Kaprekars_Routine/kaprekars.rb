def largest_digit(number)
	array = number.to_s.chars.map(&:to_i)
	array.max
end

def desc_digits(number)
	array = number.to_s.chars.map(&:to_i)
	array.sort.reverse.join.to_i
end