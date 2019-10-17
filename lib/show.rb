require 'pry'
require_relative 'board'

class Show
  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée.
    #S'active avec un Show.new.show_board(instance_de_Board)
    puts "   | 1 | 2 | 3 |"
    puts "________________"
    puts "-A-| #{@hash_board["A1"].value} | #{@hash_board["A2"].value} | #{@hash_board["A3"].value} |"
    puts "-B-| #{@hash_board["B1"].value} | #{@hash_board["B2"].value} | #{@hash_board["B2"].value} |"
    puts "-C-| #{@hash_board["C1"].value} | #{@hash_board["C2"].value} | #{@hash_board["C3"].value} |"
    puts "________________"
  end
end
