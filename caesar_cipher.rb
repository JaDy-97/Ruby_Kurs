alphabet_gross = ['A']
alphabet_klein = ['a']
('B'..'Z').each do | i |
	alphabet_gross << i
 end
alphabet_gross = alphabet_gross + alphabet_gross
('b'..'z').each do | i |
	alphabet_klein << i
 end
alphabet_klein = alphabet_klein + alphabet_klein
puts "Press D to decode a message or E to encode a message"
choice = gets.chomp.to_s
case choice 
when "E"
	puts "Enter your message in lowercase letters"
	text = gets.chomp
	text_index = text.length - 1
	puts "Enter your key value"
	n = gets.chomp.to_i
	puts " "
	cipher = ['']
	(0..text_index).each do | k |
		if text[k] == " "
			cipher[k] = " "
		else
			(0..47).each do | i |	
				big = alphabet_gross.include? text[k]
				if big == true
					if text[k] == alphabet_gross[i]
						cipher[k] = alphabet_gross[i+n]
					end
				else	
					if text[k] == alphabet_klein[i]
						cipher[k] = alphabet_klein[i+n]
					elsif text[k] == " "
						cipher[k] = " "
					end
				end
			end
		end
	end
	cipher_index = cipher.length - 1
	(0..cipher_index).each do | m |
	print cipher[m]
	end
when "D"
	puts "Enter your message in lowercase letters"
	text = gets.chomp
	text_index = text.length - 1
	puts "Enter your key value"
	n = gets.chomp.to_i
	puts " "
	cipher = ['']
	(0..text_index).each do | k |
		if text[k] == " "
			cipher[k] = " "
		else
			(0..47).each do | i |	
				big = alphabet_gross.include? text[k]
				if big == true
					if text[k] == alphabet_gross[i]
						cipher[k] = alphabet_gross[i-n]
					end
				else	
					if text[k] == alphabet_klein[i]
						cipher[k] = alphabet_klein[i-n]
					elsif text[k] == " "
						cipher[k] = " "
					end
				end
			end
		end
	end
	cipher_index = cipher.length - 1
	(0..cipher_index).each do | m |
	print cipher[m]
	end
else
puts "invalid"
end