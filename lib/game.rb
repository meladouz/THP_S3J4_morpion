require_relative 'player'
require_relative 'board'

require 'pry'
# TO DO : la classe a plusieurs attr_accessor:
# le current_player (égal à un objet Player),
# le status (en cours, nul ou un objet Player s'il gagne),
# le Board
# un array contenant les 2 joueurs
class Game
attr_accessor :current_player, :status, :Board, :players
  def initialize
# créé 2 joueurs
  puts "Quel est le nom du joueur 1 ? "
  print "> "
  name_1 = gets.chomp
  player1 = Player.new(name_1, "X")
  puts "Quel est le nom du joueur 2 ? "
  print "> "
  name_2 = gets.chomp
  player2 = Player.new(name_2, "O")
  # array avec les 2 players
  @players = [player1, player2]

# créé un board
  board = Board.new
# met le status à "on going"
# défini un current_player
  end

  def turn
# TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board).
# Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end
end
binding.pry
