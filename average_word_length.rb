puts "Enter a sentence"
sentence = gets.chomp
words  = sentence.split
index = words.length - 1
total = 0
(0..index).each do | i |
	total += words[i].length
end
average = total.to_f / words.length
puts "The averagerd length is #{average}"