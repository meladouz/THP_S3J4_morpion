class BoardCase
attr_accessor :valeur, :position
  def initialize (position)
   @valeur = "| - |" # case vide par défaut, on la change en fonction du joueur
   @position = position
  end
end
