puts "What's your name?"
name = gets.chomp
puts "What's your age?"
age = gets.chomp.to_i
if age > 120
	puts "WARING! Sure that you were honest with your age??"
else
puts "Your Name is #{name} and you are #{age} years old"
age_dog = age * 7
puts "In dog-years you are #{age_dog} years old"
end

