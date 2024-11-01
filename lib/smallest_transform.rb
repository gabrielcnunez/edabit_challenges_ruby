# Smallest Transform

# Create a function that returns the smallest number of changes it takes to 
# transform one number into one with identical digits. A step is incrementing 
# or decrementing a digit by one.

# Examples
# smallest_transform(399) ➞ 6
# # 399 transformed to 999 in 6 steps.

# smallest_transform(1234) ➞ 4
# # 1234 can be transformed to either 2222 or 3333 using 4 steps.

# smallest_transform(153) ➞ 4

# smallest_transform(33338) ➞ 5

# smallest_transform(7777) ➞ 0

# Notes
# If a number already has identical digits, return 0.

def smallest_transform(num)
  possible_steps = []
  digits = num.digits

  (0..digits.size - 1).each do |int|
    total_steps = 0
    digits.each { |digit| total_steps += (digit - digits[int]).abs } 
    possible_steps << total_steps
  end

  possible_steps.min
end