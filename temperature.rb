puts "What's the  temperature in Fahrenheit right now?"
fahrenheit = gets.chomp.to_f
celsius = (fahrenheit - 32) * 5/9
puts "The Temperature in Celsius is #{celsius}"