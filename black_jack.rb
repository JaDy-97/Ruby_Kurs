#card deck initiation
cd_herz = {"Herz 2" => 2, "Herz 3" => 3, "Herz 4" => 4, "Herz 5" => 5, "Herz 6" => 6, "Herz 7" => 7, "Herz 8" => 8, "Herz 9" => 9, "Herz Bube" => 10, "Herz Dame" => 10, "Herz König" => 10, "Herz Ass" => 11 }
cd_karo = {"Karo 2" => 2, "Karo 3" => 3, "Karo 4" => 4, "Karo 5" => 5, "Karo 6" => 6, "Karo 7" => 7, "Karo 8" => 8, "Karo 9" => 9, "Karo Bube" => 10, "Karo Dame" => 10, "Karo König" => 10, "Karo Ass" => 11 }
cd_pik = {"Pik 2" => 2, "Pik 3" => 3, "Pik 4" => 4, "Pik 5" => 5, "Pik 6" => 6, "Pik 7" => 7, "Pik 8" => 8, "Pik 9" => 9, "Pik Bube" => 10, "Pik Dame" => 10, "Pik König" => 10, "Pik Ass" => 11 }
cd_kreuz = {"Kreuz 2" => 2, "Kreuz 3" => 3, "Kreuz 4" => 4, "Kreuz 5" => 5, "Kreuz 6" => 6, "Kreuz 7" => 7, "Kreuz 8" => 8, "Kreuz 9" => 9, "Kreuz Bube" => 10, "Kreuz Dame" => 10, "Kreuz König" => 10, "Kreuz Ass" => 11 }
$cd_complete = cd_herz.merge **cd_karo, **cd_pik, **cd_kreuz
#settings
$cd_names = []
$cd_names = $cd_complete.keys
$hand = []
$aces = []
game = true
#methods
def watch_hand()
	puts "\n"
	(0..($hand.length - 1)).each do	| i |
		puts $hand[i]
	end
end
def draw_cards()
	random = rand($cd_names.length)
	#while $cd_names[random] == nil do		
		#random = rand($cd_complete.length)
	#end
	if $cd_names[random] == "Herz Ass" || $cd_names[random] == "Kreuz Ass" || $cd_names[random] == "Karo Ass" || $cd_names[random] == "Pik Ass"
			$aces << $cd_names[random]
	end
	$hand << $cd_names[random]
	$cd_names.delete($cd_names[random])
	puts "You drew a #{$hand[($hand.length - 1)]}"
end
def check_value()
	value = 0
	(0..($hand.length - 1)).each do | i |
		value += $cd_complete[$hand[i]] 
	end
	if value > 21 && $aces.empty? == false
		value -= 10
	end
	return value
end
def loose ()
	if $aces.length == 2
			return "ace_win"
	elsif check_value() > 21
			return "loose"
	elsif check_value() == 21 
			return "exact_win"
	end
end
while game == true do
#single game
	$hand.clear
	$aces.clear
	go_on = true
	puts "Draw your first card"
	draw_cards()
	while go_on == true do
		puts "Press D for drawing a card. Press H to take a look at your hand. Press any other other button to stop"
		case gets.chomp
		when "D"
			draw_cards()
			case loose()
			when "ace_win"
				puts "Two Aces! YOU WON!"
				puts "#{$cd_names.length} cards are left in the game"
				go_on = false
			when "loose"
					puts "#{check_value} is over 21. YOU LOST"
					puts "#{$cd_names.length} cards are left in the game"
					go_on = false
			when "exact_win"
				puts "Exactly 21! YOU WON!"
				puts "#{$cd_names.length} cards are left in the game"
				go_on = false
			end
=begin
			if $aces.length == 2
				puts "Two Aces! YOU WON!"
				go_on = false
			elsif check_value() > 21
					if $aces.empty? != false	
						$is_ace = true
						if check_value() < 21
					else
					puts "#{check_value} is over 21. YOU LOST"
					go_on = false
					end
			elsif check_value() == 21 
				puts "Exactly 21! YOU WON!"
				go_on = false
			end
=end
		when "H"
			watch_hand()
			puts "#{$cd_names.length} cards are left in the game"
			puts ""
		when "Dealer"
			puts $cd_names
		when "Dealer_out"
			(1..($cd_names.length - 1)).each do | i |
				$cd_names.delete_at(i)
			end
		when "Aces"
			puts $aces
		when "draw_aces"
			$hand << "Herz Ass"
			$cd_names.delete("Herz Ass")
			puts "You drew a #{$hand[($hand.length - 1)]}"
			go_on = false
		else
			puts "Score: #{check_value()}"
			puts "#{$cd_names.length} cards are left in the game"
			puts ""
			go_on = false
		end
	end
if $cd_names.length == 0
	game = false
	puts "There are no cards left. The game is over"
else 
	puts "Type exit if you don't want to play anymore."
		if gets.chomp == "exit" 
			game = false 
		end
end
end