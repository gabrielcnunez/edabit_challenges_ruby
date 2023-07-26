# Build a program that will track integers, one at a time.
#
# The program should support these functions:
# - Track - input is a integer. Can be negative.
# - Min - lowest value seen
# - Max - highest value seen
# - Mean - average of all values tracked
# - Mode - most frequently seen value
#
# Each funtion must be O(1) / constant time complexity.

tracker = IntTracker.new
​
input = [2, 4, 10, 1, 4, 1, 1, 1]
input.each do |num|
  tracker.track(num)
end
​
p tracker.mean
# => 3.0
​
p tracker.min
# => 1
​
p tracker.max
# => 10
​
p tracker.mode
# => 1