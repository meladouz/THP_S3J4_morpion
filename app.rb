require 'pry'
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'application'
require 'board'
require 'boardcase'
require 'game'
require 'player'
require 'show'

class Application
  def perform
    # TO DO : méthode qui initialise le jeu
    # puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    my_game = Game.new

  end

end

Application.new.perform
