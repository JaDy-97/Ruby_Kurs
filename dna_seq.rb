puts "Enter a DNA sequence"
seq = gets.chomp
seq.upcase!
index = seq.length - 1
correct = true
a = t = g = c = 0
(0..index).each do | i |
		if seq[i] == "A"
			a += 1
		elsif seq[i] == "T"
			t += 1
		elsif seq[i] == "G"
			g += 1
		elsif seq[i] == "C"
			c += 1
		else 
			correct = false
		end
	end
if correct == true
	puts "\nThe complementary strand is\ #{seq.reverse}"
	puts "The Sequence is #{seq.length} bases long"
	puts "Relative frequencies\n"
	puts "A  \t" + "T  \t" "G  \t" + "C"
	a_rel = a / seq.length.to_f
	t_rel = t / seq.length.to_f
	g_rel = g / seq.length.to_f
	c_rel = c / seq.length.to_f
	print "#{a_rel.round(2)}\t" + "#{t_rel.round(2)}\t" + "#{g_rel.round(2)}\t" + "#{c_rel.round(2)}"
	tm = 0
	if seq.length >= 14
		tm = 64.9 + 41 * ((g + c) - 16.4) / seq.length
	else 
		tm = (4 * (g + c)) + (2 * (a + t))
	end
	puts  "\nThe melting temperature is #{tm}° C"
else
	raise ArgumentError.new("invalid sequence")
end