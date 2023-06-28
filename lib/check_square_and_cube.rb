# Squares and Cubes
# Create a function that takes a list of two numbers 
# and checks if the square root of the first number is 
# equal to the cube root of the second number.

# Examples
# check_square_and_cube([4, 8]) ➞ true

# check_square_and_cube([16, 48]) ➞ false

# check_square_and_cube([9, 27]) ➞ true

# Notes
# Remember to return either true or false.
# All lists contain two positive numbers.

def check_square_and_cube(arr)
  Math.sqrt(arr[0]) == Math.cbrt(arr[1])
end