# This challenge will help you interpret mathematical 
# relationships both algebraically and geometrically.

# Create a function that takes a number (step) as an argument 
# and returns the number of matchsticks in that step.

# Examples

# match_houses(1) ➞ 6
# match_houses(4) ➞ 21
# match_houses(87) ➞ 436

# Notes
# Step 0 returns 0 matchsticks.
# The input (step) will always be a non-negative integer.
# Think of the input (step) as the total number of houses that 
# have been connected together.

def match_houses(step)
  if step == 0
    0
  else
    6 + 5 * (step - 1)
  end
end