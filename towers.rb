class TowerOfHanoi

  def initialize(towers=3)
    @towers = towers
  end

  def set_up
    # Set up board as 2D array
    @board = Array.new(towers, [])
    @board[0] = (1..towers).to_a
  end

  def play
    # Display instructions
    puts "Welcome to Tower of Hanoi!\n
    Instructions:\n
    Enter in numeric form where you'd like to move.\n
    Left position is 1, middle position is 2, right position is 3.\n
    Enter 'q' to quit."

    # Set up board, then prompt for move
    set_up
    get_move
  end

  def render
    # Display current board state
  end

  def get_move
    render

    puts "Move from: "
    start_position = gets.chomp
    exit if start_position.downcase == 'q'
    start_position.to_i

    puts "Move to: "
    end_position = gets.chomp
    exit if end_position.downcase == 'q'
    end_position.to_i

    # Play move if valid, otherwise get new move
    if valid?(start_position, end_position)
      execute_move
    else
      puts "Invalid move!"
      retry
    end
  end

  def execute_move(start_position, end_position)
    # Execute move
  end

  def valid?(start_position, end_position)
    # Validate move
  end

  def won?
    return true if @board.last == @board.last.sort && @board.last.length == @towers
  end

end
