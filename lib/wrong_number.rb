# Wrong Number
# Mubashir needs your help to find out a wrong number in a 2D array.

# Imagine a 2D array of numbers given below:

# arr = [
#   [1, 2, 3, 6 ],
#   [4, 5, 6, 15],
#   [7, 8, 9, 24],
#   [12,15,18,45]
# ]
# You can notice that:

# The end number of each row is the sum of each row's previous numbers.
# The end number of each column is the sum of each column's previous numbers.
# See below examples for a better understanding:

# arr1 = [
#   [2, 2, 3, 6 ],
#   [4, 5, 6, 15],
#   [7, 8, 9, 24],
#   [12,15,18,45]
# ]

# # 2 is incorrect in first row and first column.
# # Replace it with 1.

# arr2 = [
#   [1, 2, 3, 7 ],
#   [4, 5, 6, 15],
#   [7, 8, 9, 24],
#   [12,15,18,45]
# ]

# # 7 is incorrect in first row and fourth column.
# # Replace it with 6.

# arr3 = [
#   [1, 2, 3, 6 ],
#   [4, 5, 6, 15],
#   [7, 8, 9, 24],
#   [12,15,18,46]
# ]

# # 46 is incorrect in fourth row and fourth column.
# # Replace it with 45.

# Examples
# wrong_number(arr1) ➞ 1

# wrong_number(arr2) ➞ 6

# wrong_number(arr3) ➞ 45

# Notes
# N/A

# def wrong_number(arr)
#   broken_arr = nil
#   arr.each { |sub| broken_arr = sub if sub[0..-2].sum != sub[-1] }

#   left_num = broken_arr[0]
#   middle_num = broken_arr[1]
#   right_num = broken_arr[2]
#   total_sum = broken_arr[3]
#   left_diff = middle_num - left_num
#   right_diff = right_num - middle_num

#   if left_diff == right_diff
#     left_num + middle_num + right_num
#   else
#     require 'pry'; binding.pry
#   end
# end

CORRECT = [
  [1, 2, 3, 6],
  [4, 5, 6, 15],
  [7, 8, 9, 24],
  [12, 15, 18, 45]
]

def wrong_number(arr)
  0.upto(3) { |i| 0.upto(3) { |j| return CORRECT[i][j] if arr[i][j] != CORRECT[i][j] } }
end