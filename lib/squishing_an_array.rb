# Squishing an Array
# Write a function that squishes an array from the left or the right.

# Examples
# squish([1, 2, 3, 4, 5], "left")
# ➞ [[1, 2, 3, 4, 5], [3, 3, 4, 5], [6, 4, 5], [10, 5], [15]]

# squish([1, 2, 3, 4, 5], "right")
# ➞ [[1, 2, 3, 4, 5], [1, 2, 3, 9], [1, 2, 12], [1, 14], [15]]

# squish([1, 0, 2, -3], "left")
# ➞ [[1, 0, 2, -3], [1, 2, -3], [3, -3], [0]]

# squish([1, 0, 2, -3], "right")
# ➞ [[1, 0, 2, -3], [1, 0, -1], [1, -1], [0]]

# Notes
# Squishing from the left is to successively sum the first two elements 
# of an array (shortening the array in the process).
# Squishing from the right is to successively sum the last two elements of an array.
# Include the original array as the first element in either squish.
# Return an empty array if the input is an empty array.

def squish(arr, dir)
  return arr if arr.size == 0

  squished_arr = [arr]
  current_squish = arr.map(&:itself)

  until current_squish.size <= 1
    if dir == 'left'
      summed_two_nums = current_squish.shift(2).sum
      current_squish.unshift(summed_two_nums)
      squished_arr << current_squish.map(&:itself)
    else
      summed_two_nums = current_squish.pop(2).sum
      current_squish << summed_two_nums
      squished_arr << current_squish.map(&:itself)
    end
  end

  squished_arr
end