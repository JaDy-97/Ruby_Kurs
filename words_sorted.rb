puts "Enter a sentence"
sentence = gets.chomp.downcase!
words  = sentence.split
index = words.length - 1
sort = words.sort
(0..index).each do | i |
	print sort[i]
	print "\s"
end
