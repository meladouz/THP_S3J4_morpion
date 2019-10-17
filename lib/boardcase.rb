class BoardCase
attr_accessor :value, :position
  def initialize (position, value)
   @value = value # case vide par défaut, on la change en fonction du joueur
   @position = position
  end
end
