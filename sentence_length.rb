puts "enter a sentence"
sentence = gets.chomp
length = sentence.length
(0..(sentence.length)).each do | i |
	if sentence[i] == " "
		length -= 1
	end
end
puts "Your sentence has #{length} letters"
	