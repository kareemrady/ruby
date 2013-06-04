puts " Hi, What's your name ?"
@user_name = gets.chomp
def calc
puts " Hi #{@user_name} Please type the first number"
num1 = gets.chomp
puts "please type the second number"
num2 = gets.chomp
puts "please choose an operation 1)add 2)subtract 3)multiply 4)divide"
operation = {"1" => "add", "2" => "subtract", "3" => "multiply", "4" => "divide"}
result = 0
operator = gets.chomp 
case operator
when "1"
	result = num1.to_f + num2.to_f
when "2"
	result = num1.to_f - num2.to_f
when "3"
	result = num1.to_f * num2.to_f
when "4"
	result = num1.to_f / num2.to_f
end
puts " you have #{operation[operator]}ed , #{num1} & #{num2}. The result is #{result}"
puts "Would you like to perform another operation Y/N ?"
response = gets.chomp.downcase
	unless response == "n"
		calc
	end

end
calc