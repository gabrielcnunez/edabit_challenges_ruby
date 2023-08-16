# Persistent Little Bugger
# Create a function that takes an integer and returns its multiplicative persistence, which is the 
# number of times you must multiply the digits in num until you reach a single digit.

# Examples
# bugger(39) ➞ 3
# # Because 3 * 9 = 27, 2 * 7 = 14, 1 * 4 = 4 and 4 has only one digit.

# bugger(999) ➞ 4
# # Because 9 * 9 * 9 = 729, 7 * 2 * 9 = 126, 1 * 2 * 6 = 12, and finally 1 * 2 = 2.

# bugger(4) ➞ 0
# # Because 4 is already a one-digit number.

# Notes
# N/A

def bugger(num)
  muliplied_counter = 0

  while num >= 10
    num = num.digits.reduce(:*)
    muliplied_counter += 1
  end

  muliplied_counter
end