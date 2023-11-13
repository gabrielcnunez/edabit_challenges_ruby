# Check Rubik's Cubes
# Matt wants to make Rubik Cubes. These Rubiks should be in the shape of a 
# full cube, and it shouldn't have any missing parts.

# This is a full cube:

# Full

# This is not a full cube:

# Full

# And he asks his friend to draw some patterns. When his friend gives him these 
# Rubik's Cube patterns, he realizes that some of them are wrong or missing. Help him identify them!

# The small cubes that make up the Rubik's Cube will be denoted by "O".

# Return "Full" if the Rubik Cube is full and no part is missing.
# Return "Non-Full" if the Rubik Cube is non-full and no part is missing.
# Return "Missing {number of missing parts}" if the Rubik Cube has missing parts.

# Examples
# identify(
#   ["O", "O", "O"],
#   ["O", "O", "O"],
#   ["O", "O", "O"]
# ) ➞ "Full"

# # This is 3x3 full Rubik's Cube.
# # So we should return "Full"
# identify(
#   ["O", "O", "O"],
#   ["O", "O", "O"]
# ) ➞ "Non-Full"

# # This is a 2x3 Rubik's Cube.
# # It's not full, so we should return "Non-Full".
# identify(
#   ["O", "O"],
#   ["O", "O", "O"],
#   ["O", "O", "O"]
# ) ➞ "Missing 1"

# # This is almost a 3x3 Rubik's Cube with one missing part.
# # We should return "Missing 1".

# Notes
# Every cubic (small part of a Rubik's Cube) will be denoted by "O". There won't be any other type.
# Don't forget to return by paying attention to capital letters.

def identify(*cube)
  height = cube.size
  max_width = cube.max.size

  return 'Non-Full' if height != max_width

  missing_parts = 0

  cube.each { |row| missing_parts += 1 if row.size != max_width}

  missing_parts == 0 ? 'Full' : "Missing #{missing_parts}"
end