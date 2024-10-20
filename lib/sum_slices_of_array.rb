# Sum of Slices of an Array (Part 1)
# Create a function that takes an array as an argument and return an array 
# of the sum of each of its slices. An array's slices are groups of consecutive 
# values that add up to a maximum of 100. No slice's total sum should exceed 100. 
# However, if a single integer equals or exceeds 100, return the integer as well.

# Examples
# sum_of_slices([10, 29, 13, 14, 15, 16, 17, 31, 20, 10, 29, 13, 14, 15, 16, 17, 31, 20, 100])
# ➞ [97, 78, 87, 68, 100]

# # First slice: [10, 29, 13, 14, 15, 16]
# # 10 + 29 + 13 + 14 + 15 + 16 = 97
# # The next value could not be included in this slice because
# # the total would exceed 100.

# # Second slice: [17, 31, 20, 10]
# # 17 + 31 + 20 + 10 = 78
# # The next value could not be included in this slice because
# # the total would exceed 100.

# # And so on ...
# sum_of_slices([58, 3, 38, 99, 10]) ➞ [99, 99, 10]

# sum_of_slices([13]) ➞ [13]

# Notes
# Do not sort the array.

def sum_of_slices(arr)
  slices = []
  sum = 0

  arr.each do |num|
    if sum + num <= 100
      sum += num
    else
      slices << sum
      sum = num
    end
  end

  slices << sum unless sum == 0

  slices
end