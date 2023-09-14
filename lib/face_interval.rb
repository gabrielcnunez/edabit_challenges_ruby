# Face Interval
# In mathematics, interval is the difference between the 
# largest number and the smallest number in an array.

# To illustrate:

# A = (3, 5, 7, 23, 11, 42, 80)

# Interval of A = 80 - 3 = 77
# Create a function that takes an array and returns ":)" if 
# the interval of the array is equal to any other element; 
# otherwise return ":(".

# Examples
# face_interval([1, 2, 5, 8, 3, 9]) ➞ ":)"
# # Array interval is equal to one of the other elements.

# face_interval([5, 2, 8, 3, 11]) ➞ ":("
# # Array interval is not among the other elements.

# face_interval("bruh") ➞ ":/"
# # "bruh" is not an array. It's string.

# Notes
# Arrays won't contain any duplicate numbers.
# If you're not given an array, return ":/"