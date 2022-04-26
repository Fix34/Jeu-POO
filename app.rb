require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Francis Labrèle la terreur nocturne")
player2 = Player.new("Bernadette Chirac aka la moissoneuse batteuse")

puts "Bienvenue dans l'arène de la mort !!"
puts "Le combat va bientôt commencer, préparez vous, ça va chier des bulles !"
puts "\n"

puts "\n"
puts "Voilà que le premier combattant entre en scène ! "
puts "\n"
puts "#{player1.name}"
puts "\n"
puts "Veullez saluer comme il le mérite  la légende à la moustache soyante !"
puts "\n"
puts "Mais sans plus attendre, voici venu son adversaire !"
puts "\n"
puts "#{player2.name}"
puts "\n"
puts "Revenue d'entre les morts, elle n'a de cesse que de poursuivre les mécréants qui se dresse sur son chemin"
puts "\n"
puts "Et maintenant le moment que vous attendez tous ! Préparez vous pour des gerbes de sang !!"
print " "*10
puts "GET READY FOR THE NEXT BATTLE"
puts "\n"
puts "Voici l'état des combattants avant que le combat commence : "
puts "\n"

    while player1.life_point > 0 && player2.life_point > 0 do
   puts  player1.show_state 
   puts "\n"
   puts  player2.show_state 
   puts "\n"
   puts "Passons à la phase d'attaque !" 
   puts "\n"
   player2.attacks(player1) 
   break if player1.life_point <= 0
   puts "     OOOOH il semblerait que Francis ai décidé d'amortir la batte de Bernadette avec son front ! "
   puts "\n"
   player1.attacks(player2)
   puts "\n"
    end

#binding.pry


#binding.pry if player1.life_point <= 0 then puts "#{player1.name} est mort ! #{player2.name} remporte le combat !"if player2.life_point <= 0 then
      #  puts "#{player2.name} est mort ! #{player1.name} remporte le combat !"