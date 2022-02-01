puts "Tell me a number"
number_string = gets.chomp
number = number_string.to_f
number_calculated = number + 3 * 2 - 4 - 2 * number + 3
puts number_calculated