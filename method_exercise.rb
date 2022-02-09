def add(array)
	sum = 0
	(0..(array.length - 1)).each do | i |
		sum += array[i] 
	end
	return sum
end
def mean(array)
	add(array) / array.length
end
def standard_deviation(array)
	var = 0
	(0..(array.length - 1)).each do | i |
		var += (array[i] - mean(array))**2
	end
	var = var / array.length.to_f
	var = Math.sqrt(var)
	return var
end
arr_1 = [1, 2, 3]
puts "The sum is #{add(arr_1)}"
puts "The mean is #{mean(arr_1)}"
puts "The standard deviation is #{standard_deviation(arr_1)}"