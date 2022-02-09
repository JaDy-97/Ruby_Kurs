puts "Enter a sentence"
sentence = gets.chomp
words  = sentence.split
index = words.length - 1
(0..index).each do | i |
	print words[i][0].upcase!
end
