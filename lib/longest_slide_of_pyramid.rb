# Longest Slide of arr
# Create a function that takes an array of arr numbers and returns the maximum
# sum of consecutive numbers from the top to the bottom of the arr.

#                         /3/
#                         \7\ 4
#                        2 \4\ 6
#                       8 5 \9\ 3
#
#                         3
#                        7 4
#                       2 4 6
#                      8 5 9 3


# # Longest slide down sum is 3 + 7 + 4 + 9 = 23
# Examples
# longest_slide([[3], [7, 4], [2, 4, 6], [8, 5, 9, 3]]) ➞ 23

# longest_slide([[1], [2, 3], [4, 5, 6], [7, 8, 9, 10]]) ➞ 20

# longest_slide([[2], [9, 4], [1, 8, 7], [6, 4, 7, 2]]) ➞ 26

# Notes
# N/A

def longest_slide(arr)
  (arr.size - 2).downto(0) do |row|
    (0...arr[row].size).each do |col|
      arr[row][col] += [arr[row + 1][col], arr[row + 1][col + 1]].max
    end
  end
  
  arr[0][0]
end