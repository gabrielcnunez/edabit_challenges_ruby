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
  direction = 0  # 0: east, 1: north, 2: west, 3: south

  str.each_char do |char|
    case char
    when "<"
      direction = (direction + 1) % 4
    when ">"
      direction = (direction - 1) % 4
    when "."
      case direction
      when 0 
        position[0] += 1
      when 1  
        position[1] += 1
      when 2 
        position[0] -= 1
      when 3  
        position[1] -= 1
      end
    end
  end

  position
end
