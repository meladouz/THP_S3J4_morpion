
class Player
  attr_reader :name, :symbol
  def initialize (name, symbol)
    @name = name
    @symbol = symbol
# Demander aux 2 joueurs leurs prénoms : affichage de la question, récupération du gets.chomp, sauvegarde dans un objet Player
  end
end
