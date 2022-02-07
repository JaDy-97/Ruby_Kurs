puts "Enter a number"
n = gets.chomp.to_i
count = n
times = 0
while count != 1 do
	count = count / 2
	times += 1
end
puts "#{n} can be divided #{times} times till it reaches 1"
	
