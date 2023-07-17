# Can You Make the Numbers?
# You are given an array representing the number of 0s, 1s, 
# 2s, ..., 9s you have. The function will look like:

# can_build([#0s, #1s, #2s, ..., #9s], [num1, num2, ...])
# Write a function that returns true if you can build the 
# following numbers using only the digits you have.

# Examples
# can_build([0, 1, 2, 2, 3, 0, 0, 0, 1, 1], [123, 444, 92]) ➞ true

# # You have: one 1, two 2s, two 3s, three 4s, one 8 and one 9
# # Using only these digits, you can build 123, 444, and 92

# can_build([10, 2, 3, 8, 5, 8, 5, 5, 3, 1], [11, 2, 22, 49, 444, 998, 87, 44]) ➞ false

# can_build([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], []) ➞ true

# can_build([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [3]) ➞ false

# Notes
# N/A

def can_build(digits, arr)
  return true if arr.empty?

  digit_quantity = {}
  (0..9).each do |i|
    digit_quantity[i] = digits[i]
  end
  array_quantity = arr.join.chars.tally

  array_quantity.each do |k,_|
    return false if array_quantity[k] > digit_quantity[k.to_i]
  end

  true
end