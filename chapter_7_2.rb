puts " What do you want to say to grandma? "
user_input = gets.chomp
if user_input == user_input.downcase || user_input == user_input.capitalize
	puts "HUH?! SPEAK UP, SONNY!"
else
	puts "not since " + (rand(1938..1950)).to_s
end


