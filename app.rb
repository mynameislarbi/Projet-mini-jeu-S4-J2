require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new ("igor")

while player1.life_points > 0 && player2.life_points >0 

puts "Voici l'état de chaque joueur" 
puts player1.show_state 
puts player2.show_state

puts "Passons à la phase d'attaque"

puts player2.attacks(player1)

if player1.life_points <= 0
    puts "#{player1.name} a été tué !"
    break
    next
elsif player2.life_points <= 0
    puts "#{player2.name} a été tué !"
    break
    next
end

player1.attacks(player2)

end
puts "Game over"

#binding.pry