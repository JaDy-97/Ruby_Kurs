=begin
arr = ["a", "b", "c", "d", "e"]
puts "What should the 4th position be changed into?"
arr[3] = gets.chomp
puts " "
puts arr
puts " "
puts "What should tbe written into the next position?"
arr << gets.chomp
puts " "
puts arr
=end
=begin
arr_2 = [1]

(2..100).each do | i |
	arr_2 << i
end
arr_3 = [0]
(0..50).each do | j |
	arr_3[j] = arr_2[j+49]
end
puts arr_3
=end
arr_4 =  [9,3,5,4,13]
index = arr_4.length - 1
greatest_numb = 0	
arr_rev = [0]
	(0..index).each do | m |
		(0..index).each do | k |
			if arr_4[k].to_i > greatest_numb
				greatest_numb = arr_4[k]
			end
		arr_rev << greatest_numb
		arr_4.delete_at(m)
		end
	end
puts arr_rev
				