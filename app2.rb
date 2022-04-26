require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "--"*20
puts "|       BIENVENUE DANS L'ARÈNE DES TITANS       |"
puts "| Le but du jeu est d'être le dernier survivant |"
puts "--"*20
puts "\n"
puts "Commence par créer ton personnage ! "
puts "Quel est le nom de ton joueur ? "
user_name= gets.chomp
user1 = Human_player.new(user_name)

#binding.pry
