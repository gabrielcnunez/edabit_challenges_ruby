# Larger than All Numbers to Their Right
# Create a function that retrieves every number that is strictly larger than every number that follows it.

# Examples
# larger_than_right([3, 13, 11, 2, 1, 9, 5]) ➞ [13, 11, 9, 5]
# # 13 is larger than all numbers to its right, etc.

# larger_than_right([5, 5, 5, 5, 5, 5]) ➞ [5]
# # Must be strictly larger.
# # Always include the last number.

# larger_than_right([5, 9, 8, 7]) ➞ [9, 8, 7]

# Notes
# The last number in an array is trivially strictly larger than all numbers that follow it (no numbers follow it).

def larger_than_right(arr)
  return arr if arr.size == 1

  if arr.any? { |int| int > arr[0] }
    new_arr = arr.reject { |i| i < arr[0]}
    larger_than_right(new_arr.drop(1))
  else
    arr.uniq.size == 1 ? arr.uniq : arr
  end
end