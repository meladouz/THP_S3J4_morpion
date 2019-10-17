class BoardCase
attr_accessor :valeur, :case
  def initialize
   @valeur = []
   @case = "| #{valeur} |"
  end
end
