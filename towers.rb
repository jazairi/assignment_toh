class TowerOfHanoi

  def initialize(towers=3)
    @towers = towers
  end

  def set_up
    @board = Array.new(towers, [])
    @board[0] = (1..towers).to_a
  end



end
