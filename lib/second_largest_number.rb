# Find the Second Largest Number
# Create a function that takes an arr of numbers and 
# returns the second largest number.

# Examples
# second_largest([10, 40, 30, 20, 50]) ➞ 40

# second_largest([25, 143, 89, 13, 105]) ➞ 105

# second_largest([54, 23, 11, 17, 10]) ➞ 23

# Notes
# There will be at least two numbers in the arr.

def second_largest(arr)
  # arr.sort[-2]
  is_sorted = true
  while is_sorted
    is_sorted = false

    (arr.size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        is_sorted = true
      end
    end
  end
  arr[-2]
end