# Count a Specific Digit
# Write a function that counts the number of times a specific digit occurs in a range (inclusive). The function will look like:

# digit_occurrences(min, max, digit) ➞ number of times digit occurs
# Examples
# digit_occurrences(51, 55, 5) ➞ 6
# # [51, 52, 53, 54, 55] : 5 occurs 6 times

# digit_occurrences(1, 8, 9) ➞ 0

# digit_occurrences(-8, -1, 8) ➞ 1

# digit_occurrences(71, 77, 2) ➞ 1

# Notes
# Ranges can be negative.
# min <= max

def digit_occurrences(min, max, digit)
  range_array = (min..max).to_a
  joined_range = range_array.join

  joined_range.count(digit.to_s)
end