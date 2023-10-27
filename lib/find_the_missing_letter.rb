# Find the Missing Letter
# Create a function that takes an array of increasing letters and return the missing letter.

# Examples
# missing_letter(["a", "b", "c", "e", "f", "g"]) ➞ "d"

# missing_letter(["O", "Q", "R", "S"]) ➞ "P"

# missing_letter(["t", "u", "v", "w", "x", "z"]) ➞ "y"

# missing_letter(["m", "o"]) ➞ "n"

# Notes
# Tests will always have exactly one letter missing.
# The length of test arrays will always be at least two.
# Tests will be in one particular case (upper or lower but never both).

# Ashley
# 

def missing_letter(arr)
  arr.each_cons(2) do |a, b|
    return (b.ord - 1).chr if b.ord - a.ord != 1
  end
  # require 'pry'; binding.pry
end