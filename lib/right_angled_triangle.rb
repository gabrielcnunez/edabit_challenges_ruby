# Is It a Right-Angled Triangle?
# Find out if a right-angled triangle can be made given some 
# facts about the shape.

# Given varying information about a shape, create a function that 
# returns true if the shape could be a right-angle triangle and false if not.
# You will be given an array of numbers and a string stating whether 
# the numbers are angles or sides.
# The information may indicate more than one possible shape, but we just 
# need to know if these details could be found in a right-angled triangle.

# Examples
# is_right_angle([30, 60], "angle") ➞ true
# # A third angle could be 90

# is_right_angle([20, 20, 20, 20], "angle") ➞ false
# # More than 3 sides

# is_right_angle([4, 5, 3], "side") ➞ true
# # 3**2 + 4**2 = 5**2

# is_right_angle([4, 5], "side") ➞ true
# # Third side may be 3

# Notes
# Check the Resources for more info on right-angle triangles.

def is_right_angle(arr, desc)
  return false if arr.size >= 4

  if desc == 'side'
    return true if arr.size <= 2 || arr[0]**2 + arr[1]**2 == arr[2]**2
  elsif desc == 'angle'
    return true if arr.size <= 2 && arr.sum <= 90
    return true if arr.size == 3 && arr.sum == 180 && arr.include?(90)
  end
  
  false
end