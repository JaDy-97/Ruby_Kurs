puts "please enter the radius"
r = gets.chomp.to_f
#volume
volume = 4.0 / 3.0 * (Math::PI) * r**3
puts "The volume is #{volume}"
#surface
surface = 4.0 * (Math::PI) * (r**2)
puts "The surface area is #{surface}"