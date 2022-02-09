puts "Enter a year"
year = gets.chomp.to_i
century = false
century = true if year % 100 == 0
case century
when century == false
	if year % 4 == 0
		puts "#{year} is a leap year"  
	else
		puts "#{year} is not a leap year"
	end
when century == true	
	if year % 4 == 0 && year % 400 == 0
		puts "#{year} is a leap year" 
	else
		puts "#{year} is not a leap year"
	end
end