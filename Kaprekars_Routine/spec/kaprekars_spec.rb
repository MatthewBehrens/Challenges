require_relative('../kaprekars')

describe 'Writing a function that returns the largest digit in that number' do

	it 'return the largest number' do
		expect(largest_digit(1234)).to eq(4)
	end

	it 'works with less than 4 digit numbers' do 
		expect(largest_digit(120)).to eq(2)
	end
end

describe 'Writing a function that, given a 4-digit number, performs the "descending digits" operation.' do

	it 'returns a number with the same 4 digits in descending order' do
		expect(desc_digits(1234)).to eq(4321)
	end

	it 'returns a number with the same 4 digits SORTED in descending order' do
		expect(desc_digits(3253)).to eq(5332)
	end
end