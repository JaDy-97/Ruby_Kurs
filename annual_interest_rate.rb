puts "Would you please tell me your principal"
principal = gets.chomp.to_f
puts "Would you please tell me the annual interest rate"
a_i_r = gets.chomp.to_f / 100
puts "For how many years from now would you like to have your value calculated"
years = gets.chomp.to_i
if years < 0
	puts "please enter a positive amount of years"
elsif years == 0
	puts "after #{years} years, you got a value of #{principal}"
else
	(1..years).each do
		principal = principal * (1 + a_i_r)
	end
	puts "after #{years} years, you got a value of #{principal}"
end
