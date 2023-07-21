# Track the Robot (Part 3)
# A robot moves around a 2D grid. At the start, it is at [0, 0], 
# facing east. It is controlled by a sequence of instructions:

# . means take one step forwards in the current direction.
# < means turn 90 degrees anticlockwise.
# > means turn 90 degrees clockwise.
# Your job is to process the instructions and return the final 
# position of the robot.

# Example
# For example, if the robot is given the sequence of 
# instructions ..<.<., then:

# Step 1: . It still faces east, and is at [1, 0].
# Step 2: . It still faces east, and is at [2, 0].
# Step 3: < It now faces north, and is still at [2, 0].
# Step 4: . It still faces north, and is at [2, 1].
# Step 5: < It now faces west, and is still at [2, 1].
# Step 6: . It still faces west, and is now at [1, 1].
# So, track_robot("..<.<.") returns [1, 1].

# Notes
# The instruction strings will only contain the three 
# valid characters ., < or >.
# You will always be passed a string (but the string 
# might be empty).

def track_robot(str)
  position = [0, 0]
  direction = "E"

  str.each_char do |char|
    if char == "<" && direction == "N"
      direction = "W"
    elsif char == "<" && direction == "E"
      direction = "N"
    elsif char == "<" && direction == "S"
      direction = "E"
    elsif char == "<" && direction == "W"
      direction = "S"
    elsif char == ">" && direction == "N"
      direction = "E"
    elsif char == ">" && direction == "E"
      direction = "S"
    elsif char == ">" && direction == "S"
      direction = "W"
    elsif char == ">" && direction == "W"
      direction = "N"
    end
    
    if direction == "N" && char == "."
      position[1] += 1
    elsif direction == "E" && char == "."
      position[0] += 1
    elsif direction == "S" && char == "."
      position[1] -= 1
    elsif direction == "W" && char == "."
      position[0] -= 1
    end
    
  end

  position
end