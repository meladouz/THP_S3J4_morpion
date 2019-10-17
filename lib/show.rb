require 'pry'
require_relative 'board'

class Show
  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée.
    #S'active avec un Show.new.show_board(instance_de_Board)
    puts
    puts "   | 1 | 2 | 3 |"
    puts "----------------"
    puts "-A-| #{board["A1"]} | #{board["A2"]} | #{board["A3"]} |"
    puts "-B-| #{board["B1"]} | #{board["B2"]} | #{board["B3"]} |"
    puts "-C-| #{board["C1"]} | #{board["C2"]} | #{board["C3"]} |"
    puts "----------------"
  end
end
