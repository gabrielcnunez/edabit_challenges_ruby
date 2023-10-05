# Count the Points in a Circle
# Count the total number of coordinates on a two-dimensional grid that are inside a given
# circle. The function has four parameters: the points (provided as an array of hashes), 
# the circle's center x coordinate, the circle's center y coordinate, and the circle's radius.

# Examples
# points_in_circle([
#   { x: 0, y: 0 },
#   { x: 1, y: 1 },
#   { x: 0, y: 5 },
#   { x: 10, y: 10 }
# ], 0, 0, 5) ➞ 2

# Notes
# Only count the coordinates that are in the circle, not the ones that are on the border.

# def points_in_circle(points, centerX, centerY, radius)
#   num_of_points = 0

#   points.each do |point|
#     x_coord = point[:x]
#     y_coord = point[:y]

#     num_of_points += 1 if (x_coord - centerX) ** 2 + (y_coord - centerY) ** 2 < radius ** 2
#   end

#   num_of_points
# end

def points_in_circle(points, centerX, centerY, radius)
  points.map { |e| (e[:x] - centerX) ** 2 + (e[:y] - centerY) ** 2 < radius ** 2 ? 1 : 0 }.sum
end