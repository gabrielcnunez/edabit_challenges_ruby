# Sum of Positive Integers
# Create a function that takes a string containing 
# integers as well as other characters and return 
# the sum of the positive integers only.

# Examples
# positive_sum("-12#-33 13%14&-11") ➞ 27
# # 13 + 14 = 27

# positive_sum("22 13%14&-11-22 13 12 0") ➞ 74
# # 22 + 13 + 14 + 13 + 12 = 74

# positive_sum("0 12 12 2") ➞ 26

# Notes
# There is at least one positive integer.
# Each integer is separated by a space, #, %, &, etc.

def positive_sum(str)
  all_ints = str.split(/[^0-9-]/).map(&:to_i)
  positive_ints = all_ints.select(&:positive?)

  positive_ints.sum
end