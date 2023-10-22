# Complete the Square (Matrix)
# Sadly, the mathematical world is biased in favor of square matrices. As such, 
# this challenge will help rectangular matrices by making them square.

# For example, for the matrix:

# [
#   [1, 2],
#   [3, 4],
#   [5, 6]
# ]
# This can be done by padding it with a column of zeroes on the right to get:

# [
#   [1, 2, 0],
#   [3, 4, 0],
#   [5, 6, 0]
# ]
# While for the matrix:

# [
#   [1, 2, 3, 4],
#   [5, 6, 7, 8]
# ]
# One can pad it with two rows of zeros at the bottom to get:

# [
#   [1, 2, 3, 4],
#   [5, 6, 7, 8],
#   [0, 0, 0, 0],
#   [0, 0, 0, 0]
# ]
# Write a function that pads a rectangular matrix with zeros on the right or at 
# the bottom to make it square.

# Examples
# complete_square([
#   [2, 5]
# ]) ➞ [
#   [2, 5],
#   [0, 0]
# ]

# complete_square([
#   [2, 5],
#   [1, 7]
# ]) ➞ [
#   [2, 5],
#   [1, 7]
# ]

# complete_square([
#   [1, 2],
#   [3, 4],
#   [5, 6]
#  ]) ➞ [
#   [1, 2, 0],
#   [3, 4, 0],
#   [5, 6, 0]
# ]

# Notes
# Matrices should be padded on the right or at the bottom, but not both simultaneously 
# (i.e. the size of the biggest direction shouldn't change).
# If the input is already a square matrix, just return that matrix.

def complete_square(arr)
  
end