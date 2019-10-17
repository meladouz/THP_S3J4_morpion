require 'pry'

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
  #  puts @hash_board
  end # def initialize

  def play_turn (player)
# demande au joueur 1 ce qu'il veut joueur
    puts "#{player.name}, à toi de jouer : choisi ta case ! (A1 à A3, B1 à B3 ou C1 à C3)"
    print "> "
    position = gets.chomp
    if @hash_board[position] == "-"
      @hash_board[position] = "#{player.symbol}" # change le hash_board en fonction de ce qui est entré par le joueur
      return true
    else
      return false
    end
    #print @hash_board
  end

  def victory?(player)
#indique victoire ou match nul
# 8 conditions de victoire
   if @hash_board["A1"] == player.symbol && @hash_board["A2"] == player.symbol && @hash_board["A3"] == player.symbol
     return true
   elsif @hash_board["B1"] == player.symbol && @hash_board["B2"] == player.symbol && @hash_board["B3"] == player.symbol
     return true
   elsif @hash_board["C1"] == player.symbol && @hash_board["C2"] == player.symbol && @hash_board["C3"] == player.symbol
     return true
   elsif @hash_board["A1"] == player.symbol && @hash_board["B1"] == player.symbol && @hash_board["C1"] == player.symbol
     return true
   elsif @hash_board["A2"] == player.symbol && @hash_board["B2"] == player.symbol && @hash_board["C2"] == player.symbol
     return true
   elsif @hash_board["A3"] == player.symbol && @hash_board["B3"] == player.symbol && @hash_board["C3"] == player.symbol
     return true
   elsif @hash_board["A1"] == player.symbol && @hash_board["B2"] == player.symbol && @hash_board["C3"] == player.symbol
     return true
   elsif @hash_board["A3"] == player.symbol && @hash_board["B2"] == player.symbol && @hash_board["C1"] == player.symbol
     return true
   end
   return false
  end

  def match_null
    if @hash_board["A1"] != "X"  || @hash_board["A1"] !=  "O"
      return false
    elsif @hash_board["B1"] != "X"  || @hash_board["B1"] !=  "O"
      return false
    elsif @hash_board["C1"] != "X"  || @hash_board["C1"] != "O"
      return false
    elsif @hash_board["A2"] != "X"  || @hash_board["A2"] !=  "O"
      return false
    elsif @hash_board["B2"] != "X"  || @hash_board["B2"] != "O"
      return false
    elsif @hash_board["C2"] != "X"  || @hash_board["C2"] != "O"
      return false
    elsif @hash_board["A3"] != "X"  || @hash_board["A3"] !=  "O"
      return false
    elsif @hash_board["B3"] != "X"  || @hash_board["B3"] !=  "O"
      return false
    elsif @hash_board["C3"] != "X"  || @hash_board["C3"] != "O"
      return false
    end
    return true
  end

  def clear_board # refait un initialize
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
  #  puts @hash_board
  end
end
