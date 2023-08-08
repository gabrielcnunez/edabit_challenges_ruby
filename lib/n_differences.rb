# N Differences
# Write a function that transforms an array into an array of its 
# differences repeatedly until there exists only one element left. 
# A difference is A[n+1] - A[n].

# To illustrate:

# [5, 1, 9, 3, 4, 0]

# [-4, 8, -6, 1, -4]
# # 1 - 5 = -4; 9 - 1 = 8; 3 - 9 = -6; etc.

# [12, -14, 7, -5]

# [-26, 21, -12]

# [47, -33]

# -80

# Examples
# n_differences([5, 1, 9, 3, 4, 0]) ➞ -80

# n_differences([1, 1, 1, 1]) ➞ 0

# n_differences([5, 8, 8]) ➞ -3

# Notes
# Each array will have at least two elements.

# Find the difference between each integer in array in their order
# Store differences in an updated array
# 

def n_differences(arr)
  while arr.length > 1
    arr = arr.each_cons(2).map { |a, b| b - a }
  end
  arr[0]
end