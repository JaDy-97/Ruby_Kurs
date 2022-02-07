puts "Enter n"
n = gets.chomp.to_f 
puts ""
#average
average = 0.0
(1..n).each do | i |
	i.to_f
	average = average + i
end
average = average / n
#bracket
bracket = 0.0
(1..n).each do | j |
	j.to_f
	bracket = bracket + ((j - average)**2)
end
puts bracket