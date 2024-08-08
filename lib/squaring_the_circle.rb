# Squaring the Circle
# This challenge is more about geometry and trig than code-writing, 
# but some may find it interesting.

# A circle has a circumference of 100 meters. A regular polygon, 
# let's say a square, inscribed inside this circle has a perimeter 
# of about 90 meters. As you increase the number of sides of the regular p
# olygon, it's perimeter will become arbitrarily close to 100 meters.

# Write a function whose argument is the number of sides of the inscribed 
# regular polygon. The function returns the polygon's perimeter. Round your 
# answer to 3 decimal places.

# Examples
# circle(3) ➞ 82.699

# circle(12) ➞ 98.862

# circle(100) ➞ 99.984

# circle(1000) ➞ 100.0
# # Perimeter is actually <100, rounding makes it 100.

# Notes
# N/A

def circle(n)
  pi = Math::PI
  radius = 100 / 2 / pi
  perimeter = 2 * n * radius * Math.sin(pi / n)
  
  perimeter.round(3)
end