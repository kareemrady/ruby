class Array
	def sort_fn list
	return list if list.size <= 1 

	sorted = false
	unless sorted
		0.upto(list.length-2) do |i|
			if list[i].downcase > list[i+1].downcase
			list[i], list[i+1] = list[i+1], list[i]
			sorted = true
		end
	end
end

  list
end
end

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
puts user_input.sort_fn user_input


