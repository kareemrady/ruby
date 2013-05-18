def old_roman_numeral num
	output = ''
	output = output + 'M' * (num / 1000)
	output = output + 'D' * (num % 1000 /500)
	output = output + 'C' * (num % 500 / 100)
	output = output + 'L' * (num % 100 / 50)
	output = output + 'X' * (num % 50 / 10)
	output = output + 'V' * (num % 10 / 5)
	output = output + 'I' * (num % 5 / 1)
end

	