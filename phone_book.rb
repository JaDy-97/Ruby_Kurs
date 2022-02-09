phone_book = { 'Peter' => '0175635456', 'Anna' => '01836385765', 'Thorsten' => '0128475837' }
open = true
while open == true do	
	puts "Enter E to get the number of entries"
	puts "Enter N for searching a specific name in the phone book"
	puts "Enter Add for adding a new number into the phone book"
	puts "Enter MR to modify a Number"
	puts "Enter MN to modify a Name"
	puts "Enter L to see a complete list"
	puts "Enter exit to close the Phone Book"
	choice = gets.chomp
	case choice
	when "E"
		puts "\n"
		puts "\n"
		puts "The Phone Book has #{phone_book.length} entries\n"
	when "N"
		puts "\n"
		puts "\n"
		puts "Enter the Name"
		puts phone_book[gets.chomp]
		puts "\n"
		puts "\n"
	when "Add"
		puts "\n"
		puts "\n"
		puts "Name:"
		name = gets.chomp
		puts "Number:"
		number = gets.chomp
		phone_book[name] = number
		puts "\n"
		puts "\n"
	when "MR"
		puts "\n"
		puts "\n"
		puts "Enter the name, whose number you want to modify"
		name = gets.chomp
		puts "What is the new number?"
		phone_book[name] = gets.chomp
		puts "\n"
		puts "\n"
	when "MN"
		puts "\n"
		puts "\n"
		puts "Enter the name, which you want to modify"
		old_name = gets.chomp
		old_number = phone_book[old_name]
		phone_book.delete(old_name)
		puts "What is the new name"
		new_name = gets.chomp
		phone_book[new_name] = old_number
		puts "\n"
		puts "\n"
	when "L"
		puts "\n"
		puts "\n"
		sorted = []
		sorted = phone_book.sort.to_a
		(0..(sorted.length - 1)).each do | i |
			print sorted[i][0]
			print "\t"
			print "\t"
			print sorted[i][1]
			puts ""
		end
		puts "\n"
		puts "\n"
	when "exit"
		open = false
	end
end
