# Tic Tac Toe
# Given a 3x3 matrix of a completed tic-tac-toe game, 
# create a function that returns whether the game is 
# a win for "X", "O", or a "Draw", where "X" and "O" 
# represent themselves on the matrix, and "E" represents an empty spot.

# Examples
# tic_tac_toe([
#   ["X", "O", "X"],
#   ["O", "X",  "O"],
#   ["O", "X",  "X"]
# ]) ➞ "X"

# tic_tac_toe([
#   ["O", "O", "O"],
#   ["O", "X", "X"],
#   ["E", "X", "X"]
# ]) ➞ "O"

# tic_tac_toe([
#   ["X", "X", "O"],
#   ["O", "O", "X"],
#   ["X", "X", "O"]
# ]) ➞ "Draw"

# Notes
# Make sure that if O wins, you return the letter "O" and 
# not the integer 0 (zero) and if it's a draw, make sure you 
# return the capitalised word "Draw". If you return "X" or "O", 
# make sure they're capitalised too.

def tic_tac_toe(board)
  board.each do |row|
    if row.all? { |cell| cell == "X" }
      return "X"
    elsif row.all? { |cell| cell == "O" }  
      return "O"
    end
  end

  board.transpose.each do |col|
    return 'O' if !col.include?('X') && !col.include?('E')
    return 'X' if !col.include?('O') && !col.include?('E')
  end

  size = board.size

  return 'O' if (0..size-1).all? { |i| board[i][i] == 'O' }
  return 'X' if (0..size-1).all? { |i| board[i][i] == 'X' }
  return 'O' if (0..(size - 1)).all? { |i| board[i][size - 1 - i] == 'O' }
  return 'X' if (0..(size - 1)).all? { |i| board[i][size - 1 - i] == 'X' }

  'Draw'
end