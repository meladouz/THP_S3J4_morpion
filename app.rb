require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'


# TO DO : méthode qui initialise le jeu
# puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.

class Application
  def perform
    my_game = Game.new
    new_game = true
    while new_game == true
      while my_game.status != "end" #|| my_game.status != "null"   # tant que jeux pas fini ou match nul, continu à jouer
        my_game.turn
        my_game.switch_player
      end
      if my_game.new_round == false
        new_game = false
      end
    end
  end
end

Application.new.perform
# binding.pry
