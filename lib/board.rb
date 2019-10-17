class Board
  attr_accessor :hash_board, :count_turn
  def initialize
    @hash_board = Hash.new
    ('A'..'C').each do |letter|
      (1..3).each do |nb|
        @hash_board["#{letter}#{nb}"]= BoardCase.new
        print @hash_board ["#{letter}#{nb}"]
      end
      puts
    end
  end
end
