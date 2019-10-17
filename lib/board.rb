require 'pry'

require_relative 'player'
require_relative 'boardcase'


class Board
  attr_accessor :hash_board, :count_turn, :BoardCase, :new_board
  def initialize
    @count_turn = 1
    @new_board = Hash.new
    @hash_board = Hash.new

# cré un array avec les positions A1, A2...
    liste_position = Array.new
    ('A'..'C').each do |letter|
      (1..3).each do |nb|
        liste_position << "#{letter}#{nb}"
        end
      end
# crée un hash_board et un hash avec les positions vides
    9.times do |i|
     @new_board[liste_position[i]] = BoardCase.new(liste_position[i], "-")
     @hash_board[liste_position[i]]= @new_board[liste_position[i]].value                    # hash avec juste les cases vides
    end
# afficher le plateau
    puts @hash_board
  end

  def play_turn (player)
# demande au joueur 1 ce qu'il veut joueur
    puts "#{player.name}, à toi de jouer : choisi ta case ! (A1 à A3, B1 à B3 ou C1 à C3)"
    print "> "
    position = gets.chomp
# change le hash_board en fonction de ce qui est entré par le joueur
    @new_board[position].value = "#{player.symbol}"
    @hash_board[position] = "#{player.symbol}"
    print @hash_board                                   # !!! affiche pas bien le plateau de jeu ...
  end

  def victory?
#indique victoire ou match nul
# 8 conditions de victoire
   @hash_board["A1"].value
  end
end

binding.pry
