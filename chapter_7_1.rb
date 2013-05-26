x = 99
while x <= 99 && x > 0
	if x == 1
		puts x.to_s + " bottle of beer on the wall, " + x.to_s + " bottle of beer."
		puts "Take one down and pass it around, no more bottles of beer on the wall." 
		puts ' '
		break
	end
		puts x.to_s + " bottles of beer on the wall, " + x.to_s + " bottles of beer."
		puts "Take one down and pass it around, " + (x-1).to_s + " bottles of beer on the wall." 
		puts ' '
		x = x - 1
end
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
