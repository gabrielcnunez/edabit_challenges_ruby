# Unfair Hurdles

# Unfair hurdles are hurdles which are either too high, 
# or way too close together.

# Create a function which takes an array of strings, 
# representing hurdles, and return whether they are unfair. 
# For the purposes of this challenge, unfair hurdles are:

# At least 4 characters tall.
# Strictly less than 4 spaces apart.
# Examples

# Hurdle are good distance apart but are way too tall.

# is_unfair_hurdle([
#   "#    #    #    #",
#   "#    #    #    #",
#   "#    #    #    #",
#   "#    #    #    #"
# ]) ➞ true

# Hurdles are a fine height but are way too close together.

# is_unfair_hurdle([
#   "#  #  #  #",
#   "#  #  #  #",
#   "#  #  #  #"
# ]) ➞ true

# These hurdles are mighty splendid.

# is_unfair_hurdle([
#   "#      #      #      #",
#   "#      #      #      #"
# ]) ➞ false

# Notes

# Hurdles will be represented with a hashtag "#".
# There will be the same spacing between hurdles.
# Hurdles are always as high as the length of the array.
# Hurdles are always evenly spaced.

def is_unfair_hurdle(hurdles)
  hurdles.size > 3 || !hurdles[0][1..4].strip.empty?
end