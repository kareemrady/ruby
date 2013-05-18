user_input = []
x = 1
while x == 1
	puts " Please input a word per line then press enter, you can hit enter on an empty line to exit"
	y = gets.chomp
	user_input = user_input.push y
	if y == ''
		x = 0
	end
end
puts user_input.sort
