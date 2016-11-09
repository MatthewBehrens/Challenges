def num_to_arr(num)
  num.to_s.split(//)
end


def largest_digit(num)
	array = num.to_s.chars.map(&:to_i)
	if array.length > 4
		return false
	else
		return array.max
	end
end

def desc_digits(num, desc=true)
  arr = num_to_arr(num)
  (4-arr.size).times { arr.unshift("0") }
  arr = desc ? arr.sort.reverse : arr.sort
  arr.join.to_i
end

def kaprekar(num)
  counter = 0
  until num == 6174
    num = desc_digits(num) - desc_digits(num, false)
    counter += 1
  end
  counter
end