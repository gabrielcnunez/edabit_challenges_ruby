# Making a Box
# Create a function that creates a box based on dimension n.

# Examples
# make_box(5) ➞ [
#   "#####",
#   "#   #",
#   "#   #",
#   "#   #",
#   "#####"
# ]

# make_box(3) ➞ [
#   "###",
#   "# #",
#   "###"
# ]

# make_box(2) ➞ [
#   "##",
#   "##"
# ]

# make_box(1) ➞ [
#   "#"
# ]

# Notes
# N/A

def make_box(n)
  return ['#'] if n == 1

  hash_box = []
  hash_box << '#' * n

  (n - 2).times do
    hash_box << '#' + ' ' * (n - 2) + '#'
  end

  hash_box << '#' * n

  hash_box
end