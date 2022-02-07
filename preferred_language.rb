puts "Whats is your name?"
name = gets.chomp
correct_l = false
while correct_l == false do
	puts "Whats is your preferred language?"
	puts "Enter E for english"
	puts "Enter D für deutsch"
	puts "Enter S for svenska"
	puts "Enter I for italiano"
	language = gets.chomp
	case language 
		when "E"
			puts "Hello #{name}"
		when "D"
			puts "Hallo #{name}"
			correct_l = true
		when "S"
			puts "God dag #{name}"
			correct_l = true
		when "I"
			puts "Ciao #{name}"
			correct_l = true
		else
			puts "#{language} is no option. Please type again"
	end
end