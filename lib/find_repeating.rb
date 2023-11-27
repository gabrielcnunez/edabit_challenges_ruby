# Find Repeating
# Create a function that accepts a string and groups repeated values. 
# The groups should have the following structure: [[value, first_index, 
# last_index, times_repeated], ..., [value, first_index, last_index, times_repeated]].

# value: Character being assessed.
# first_index: Index of characters first appearance.
# last_index: Index of characters last appearance.
# times_repeated: Number of consecutive times character repeats.

# Examples
# find_repeating("a") ➞ [["a", 0, 0, 1]]

# find_repeating("aabbb") ➞ [["a", 0, 1, 2], ["b", 2, 4, 3]]

# find_repeating("1337") ➞ [["1", 0, 0, 1], ["3", 1, 2, 2], ["7", 3, 3, 1]]

# find_repeating("aabbbaabbb") ➞ [["a", 0, 1, 2], ["b", 2, 4, 3], ["a", 5, 6, 2], ["b", 7, 9, 3]]

# Notes
# An empty string should return an empty array: "" ➞ []
# Non-repeated values should start and end on the same index.

def find_repeating(str)
  value_groups = []
  value = nil
  first_ind = nil
  last_ind = nil
  quantity = nil

  str.each_char.with_index do |char, ind|
    if char != value
      value_groups << [value, first_ind, last_ind, quantity] if value != nil
      value = char
      first_ind = ind
      last_ind = ind
      quantity = 1
    else
      last_ind = ind
      quantity += 1
    end

    value_groups << [value, first_ind, last_ind, quantity] if ind == str.size - 1
  end

  value_groups
end