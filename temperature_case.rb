puts "What's the temperature in celsius right now?"
temp = gets.chomp.to_i
case temp
	when -Float::INFINITY..-1
		puts "It's below zero. Water has to be frozen right now"
	when 0..10
		puts "It's between zero and ten degrees celsius. Water should be liquidous again"
	when 11..20
		puts "Between eleven and twenty degrees celsius. Feels like spring to me"
	when 21..Float::INFINITY
		puts "Over twenty degress! It's finally summer"
end
