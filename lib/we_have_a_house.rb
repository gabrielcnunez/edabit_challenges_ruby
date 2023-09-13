# We Have a House
# In the garden, we have a house. We don't know how big the house is going to get. The garden 
# is 50' x 50'. If you want to walk around the house, you'll need 3 feet so the house cannot 
# be bigger than the width & depth of the garden minus the path to walk around it.

# We Have a House

# In this example you can see the arguments your function is going to get (in red). The measurements 
# of the windows + door as well as the dark rim (against rain damage) are always the same (in blue). 
# We put One door in the front and Two windows in each wall.

# We don't have permission to build higher than 20'. The area around the windows and door cannot be 
# smaller than 1 foot except under the door obviously. It is possible to have a flat roof.

# Create a function that takes four arguments and returns the area of light yellow paint and dark gray 
# paint in a string as square feet. Assuming the coverage of the paint is perfect and you'll only need one layer of paint.

# Examples
# we_have_house(8, 30, 32, 8) ➞ "Yellow: 873, Gray: 242"

# we_have_house(9, 14, 20, 9) ➞ "House too small."

# we_have_house(9, 38, 36, 9) ➞ "Yellow: 1261, Gray: 290"

# we_have_house(10, 31, 30, 11) ➞ "No permission."

# Notes
# If the house is too big for the garden, return "House too big."
# If the house is too high, return "No permission."
# If the house is too small (for the windows and door to fit), return "House too small."

def we_have_house(hh, hw, hd, rh)
  return "House too big." if hw > 44 || hd > 44
  return "No permission." if hh + rh > 20
  return "House too small." if hw < 15 || hd < 11

  side_windows = 72
  front_windows_top_door = 39
  bottom_door = 6

  yellow_paint = (hh - 2) * 2 * (hw + hd) - side_windows - front_windows_top_door + (hw * rh)
  gray_paint = 2 * 2 * (hw + hd) - bottom_door

  "Yellow: #{yellow_paint}, Gray: #{gray_paint}"
end