# Find the Odd Integer
# Create a function that takes an array and finds the integer 
# which appears an odd number of times.

# Examples
# find_odd([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5]) ➞ -1

# find_odd([20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5]) ➞ 5

# find_odd([10]) ➞ 10

# Notes
# There will always only be one integer that appears an odd number of times.

# Count of number of each integer in an array
# Iterate through the quantities of integers to find the one that is odd

def find_odd(arr)
  quantities = Hash.new(0)
  arr.each do |num| ## quantities = arr.tally
    quantities[num] += 1
  end
  quantities.each do |k,v|
    return k if v.odd?
  end
end