=begin
puts "How many lines?"
lines = gets.chomp.to_i
i = 0
while i != lines do
	i.times {print "*"}
	print "\n"
	i += 1
end
=end	
=begin
puts "How many lines?"
lines = gets.chomp.to_i
i = 0
while lines != 0 do
	lines = lines - 1
	lines.times {print " "}
	i.times {print "*"}
	print "\n"
	i += 1
end
=end
puts "How many lines?"
lines = gets.chomp.to_i
i = 0
while lines != 0 do
	if lines.odd? == true
		i.times {print " "}
		lines.times {print "*"}
		print "\n"
		i += 1
	end
	lines -= 1
end