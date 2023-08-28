# Advanced Array Sort
# Create a function that takes an array of numbers or strings and returns an array 
# with the items from the original array stored into subarrays. Items of the same value should be in the same subarray.

# Examples
# advanced_sort([2, 1, 2, 1]) ➞ [[2, 2], [1, 1]]

# advanced_sort([5, 4, 5, 5, 4, 3]) ➞ [[5, 5, 5], [4, 4], [3]]

# advanced_sort(["b", "a", "b", "a", "c"]) ➞ [["b", "b"], ["a", "a"], ["c"]]

# Notes
# The subarrays should be returned in the order of each element's first appearance in the given array.

def advanced_sort(arr)
  sub_arrays = Hash.new { |h, k| h[k] = [] }

  arr.each do |item|
    sub_arrays[item] << item
  end

  sub_arrays.values
end