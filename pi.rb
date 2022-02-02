puts "For how many terms should pi be specified?"
terms = gets.chomp.to_f
pi = 0
mi_pl = true
(1..terms).each do | number |
	number = number.to_f
	if (number % 2) != 0
		if mi_pl == false
			pi = pi - (4 / number)
			mi_pl = true
		else
			pi = pi + (4 / number)
			mi_pl = false
		end
	end
end
puts "Pi is approximately #{pi}"