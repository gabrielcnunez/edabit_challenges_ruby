# String Expansion
# Create a function that takes a string txt and expands it as per the following rules:

# The numeric values represent the occurrence of each letter preceding that numeric value.
# string_expansion("3M2u5b2a1s1h2i1r") ➞ "MMMuubbbbbaashiir"

# The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears.
# string_expansion("3Mat")➞ "MMMaaattt"      # correct

# string_expansion("3Mat") ➞ "MMMat"          # wrong
# string_expansion("3Mat") ➞ "MatMatMat"      # wrong

# If there are consecutive numeric characters, ignore them all except last one.
# string_expansion("3M123u42b12a") ➞ "MMMuuubbaa"

# If there are two consecutive alphabetic characters then the string will remain unchanged.
# string_expansion("airforce") ➞ "airforce"

# Empty strings should return an empty string.
# string_expansion("") ➞ ""

# Notes
# N/A

def string_expansion(str)
  
end