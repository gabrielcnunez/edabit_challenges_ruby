# Determine if Three Points are on a Line
# Create a function that returns true if three points 
# belong to the same line, and false otherwise. Each 
# point is represented by an array consisting of an x- and y-coordinate.

# Examples
# same_line([[0, 0], [1, 1], [3, 3]]) ➞ true

# same_line([[-2, -1], [2, 1], [0, 0]]) ➞ true

# same_line([[-2, 0], [-10, 0], [-8, 0]]) ➞ true

# same_line([[0, 0], [1, 1], [1, 2]]) ➞ false

# same_line([[3, 4], [3, 5], [6, 6]]) ➞ false

# Notes
# Note the special case of a vertical line.

def same_line(arr)
  x_total = 0
  y_total = 0

  arr.each do |sub|
    x_total += sub[0]
    y_total += sub[1]
  end

  x_total == y_total || x_total == 0 || y_total == 0
end