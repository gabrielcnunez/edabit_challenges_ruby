# Mini Peaks
# Write a function that returns all the elements in an array 
# that are strictly greater than their adjacent left and right neighbors.

# Examples
# mini_peaks([4, 5, 2, 1, 4, 9, 7, 2]) ➞ [5, 9]
# # 5 has neighbours 4 and 2, both are less than 5.

# mini_peaks([1, 2, 1, 1, 3, 2, 5, 4, 4]) ➞ [2, 3, 5]

# mini_peaks([1, 2, 3, 4, 5, 6]) ➞ []

# Notes
# Do not count boundary numbers, since they only have one left/right neighbor.
# If no such numbers exist, return an empty array.

def mini_peaks(arr)
  the_peaks = []

  arr.each_cons(3) { |a| the_peaks << a[1] if a[1] > a[0] && a[1] > a[2] }

  the_peaks
end