# Binary to Decimal Converter
# You are given one input: an array containing eight 1's 
# and/or 0's. Write a function that takes an 8 bit binary 
# number and converts it to decimal.

# Examples
# binary_to_decimal([1, 1, 1, 1, 1, 1, 1, 1]) ➞ 255

# binary_to_decimal([0, 0, 0, 0, 0, 0, 0, 0]) ➞ 0

# binary_to_decimal([1, 0, 1, 1, 1, 1, 0, 0]) ➞ 188

# Notes
# Return an integer.

def binary_to_decimal(binary)
  decimal = []
  binary.each_with_index do |digit, index|
    decimal << digit * 128 * (1 / 2.0 ** index)
  end
  decimal.sum.to_i
end