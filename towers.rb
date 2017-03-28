class TowerOfHanoi

  def initialize(towers=3)
    @towers = towers
  end

  def set_up
    @board = Array.new(towers, [])
    @board[0] = (1..towers).to_a
  end

  def play
    puts "Welcome to Tower of Hanoi!\n
    Instructions:\n
    Enter where you'd like to move from and to\n
    in the format '1,3'. Enter 'q' to quit."

    set_up
    move
  end

  def render
    # Display current board state
  end

  def get_move
    render

    # Prompt user for move
  end

  def execute_move
    # Execute move
  end

  def valid?
    # Validate move
  end

  def won?
    return true if @board.last == @board.last.sort && @board.last.length == @towers
  end

end
