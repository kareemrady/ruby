defeat = {scissors: :paper, paper: :rock, rock: :scissors}

x = []
y = []

defeat.each  do |key,value|  
	x << key
	y << value
end
throws = defeat.keys
puts throws
