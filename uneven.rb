puts "Enter your upper value"
uv = gets.chomp.to_i
puts "The following numbers are uneven:"
(1..uv).each do | possibly_uneven |
	if (possibly_uneven % 2) != 0
		puts possibly_uneven
	end
end