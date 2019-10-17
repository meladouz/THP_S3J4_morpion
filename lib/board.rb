require 'bordcase.rb'
require 'player.rb'

class Board
  attr_accessor :hash_board, :count_turn
  def initialize
    @hash_board = Hash.new
    # cré un hash > peut être apple
    ('A'..'C').each do |letter|
      (1..3).each do |nb|
        @hash_board["#{letter}#{nb}"]= "| - |"# BoardCase.new("#{letter}#{nb}") # case vide de base
        print @hash_board ["#{letter}#{nb}"]
        end
      puts
    end
  end
  def play_turn
    # demande au joueur 1 ce qu'il veut joueur
    puts "#{player1.name}, à toi de jouer : choisi ta case ! (A1 à A3, B1 à B3 ou C1 à C3)"
    print "> "
    position1 = gets.chomp
    @hash_board["#{position1}"]= "| #{player1.symbol} |"
    print @hash_board

#     = "| #{player1.symbol} |"
#    player1_symbole = "| o |"
    end
    # change le hash_board en fonction de ce qui est entré par le joueur

  end
  def victory?
    #indique victoire ou match nul

  end
end
