=begin
arr = [2, 3, "a", 20, "BOOM"].shuffle
begin
	add = arr[rand(0..arr.length)] + arr[rand(0..arr.length)]
rescue TypeError
	puts "Please try again"
else
puts add
end
=end
def cube(x)
 x*x*x
end
puts "enter z"
z = gets.chomp.to_i
print cube(z) 