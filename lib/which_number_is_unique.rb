# Which Number Is Not like the Others?
# Create a function that takes an array of numbers and returns the number that's unique.

# Examples
# unique([3, 3, 3, 7, 3, 3]) ➞ 7

# unique([0, 0, 0.77, 0, 0]) ➞ 0.77

# unique([0, 1, 1, 1, 1, 1, 1, 1]) ➞ 0

# Notes
# Test cases will always have exactly one unique number while all others are the same.

def unique(arr)
  unique_nums = arr.uniq
  first_num = unique_nums[0]
  second_num = unique_nums[1]

  arr.count(first_num) == arr.size - 1 ? second_num : first_num
end