puts "Tell me a number"
number = gets.chomp
number = number.to_f
number_calculated = (number + 3) * 2 - 4 - 2 * number + 3
puts number_calculated