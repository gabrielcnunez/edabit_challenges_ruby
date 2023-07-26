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

class IntTracker
  attr_reader :min, :max, :mode
  def initialize
    @ints = Hash.new(0)
    @total = 0
    @min = nil
    @max = nil
    @mode = nil
    @count = 0
  end

  def track(input)
    @count += 1
    @ints[input] += 1
    @total += input
    if @min.nil? || input < @min
      @min = input
    end
    if @max.nil? || input > @max
      @max = input
    end
    if @mode.nil? || @ints[input] > @mode
      @mode = input
    end
  end

  def mean
    @total.to_f / @count
  end
end

tracker = IntTracker.new

input = [2, 4, 10, 1, 4, 1, 1, 1]
input.each do |num|
  tracker.track(num)
end

p tracker.mean
# => 3.0

p tracker.min
# => 1

p tracker.max
# => 10

p tracker.mode
# => 1