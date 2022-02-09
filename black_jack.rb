#card deck initiation
cd_herz = {"Herz 2" => 2, "Herz 3" => 3, "Herz 4" => 4, "Herz 6" => 6, "Herz 7" => 7, "Herz 8" => 8, "Herz 9" => 9, "Herz Bube" => 10, "Herz Dame" => 10, "Herz König" => 10, "Herz Ass" => 11 }
cd_karo = {"Karo 2" => 2, "Karo 3" => 3, "Karo 4" => 4, "Karo 6" => 6, "Karo 7" => 7, "Karo 8" => 8, "Karo 9" => 9, "Karo Bube" => 10, "Karo Dame" => 10, "Karo König" => 10, "Karo Ass" => 11 }
cd_pik = {"Pik 2" => 2, "Pik 3" => 3, "Pik 4" => 4, "Pik 6" => 6, "Pik 7" => 7, "Pik 8" => 8, "Pik 9" => 9, "Pik Bube" => 10, "Pik Dame" => 10, "Pik König" => 10, "Pik Ass" => 11 }
cd_kreuz = {"Kreuz 2" => 2, "Kreuz 3" => 3, "Kreuz 4" => 4, "Kreuz 6" => 6, "Kreuz 7" => 7, "Kreuz 8" => 8, "Kreuz 9" => 9, "Kreuz Bube" => 10, "Kreuz Dame" => 10, "Kreuz König" => 10, "Kreuz Ass" => 11 }
$cd_complete = cd_herz.merge **cd_karo, **cd_pik, **cd_kreuz
$cd_names = []
$cd_names = $cd_complete.to_a
$hand = []
go_on = true
#methods
def watch_hand()
	puts "\n"
	(0..($hand.length - 1)).each do	| i |
		puts $hand[i][0]
	end
end
def draw_cards()
	$hand << $cd_names[rand($cd_complete.length)]
	puts "You drew a #{$hand[($hand.length - 1)][0]}"
end
#random card
puts "Draw your first card"
draw_cards()
while go_on == true do
	puts "Press D for drawing a card. Press H to take a look at your hand. Press any other other button to stop"
	case gets.chomp
	when "D"
		draw_cards
	when "H"
		watch_hand()
	else
		go_on = false
	end
end

