# Check Magic Square
# A "magic square" is a square divided into smaller squares each 
# containing a number, such that the numbers in each vertical, 
# horizontal, and diagonal row add up to the same value.

# Write a function that takes a 2D array, checks if it's a magic 
# square and returns either true or false depending on the result.

# Examples
# is_magic_square([
#   [8, 1, 6],
#   [3, 5, 7],
#   [4, 9, 2]
# ]) ➞ true

# is_magic_square([
#   [16,  3,  2, 13],
#   [ 5, 10, 11,  8],
#   [ 9,  6,  7, 12],
#   [ 4, 15, 14,  1]
# ]) ➞ true

# is_magic_square([
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]) ➞ false

# Notes
# Check diagonals as well.
# Test input will always be square.
# Check the Resources tab for additional info on magic squares.

def is_magic_square(square)
  start_num = square[0].sum
  max_index = square.size - 1

  square[1..max_index].each { |arr| return false if arr.sum != start_num }
  square.transpose.each { |arr| return false if arr.sum != start_num }
  
  first_diagonal = (0..max_index).map { |i| square[i][i] }
  second_diagonal = (0..max_index).map { |i| square[i][-i-1] }
  return false if first_diagonal.sum != start_num || second_diagonal.sum != start_num

  true
end