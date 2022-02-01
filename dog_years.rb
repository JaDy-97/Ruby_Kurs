puts "What's your name?"
name = gets.chomp
puts "What's your age?"
age = gets.chomp
puts "Your Name is #{name} and you are #{age} years old"
age_i = age.to_i
age_dog = age_i * 7
puts "In dog-years you are #{age_dog} years old"
