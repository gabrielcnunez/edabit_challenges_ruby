# Free Range
# Create a function which converts an ordered number array into a array 
# of ranges (represented as strings). Note how some arrays have some numbers missing.

# Examples
# numbers_to_ranges([1, 2, 3, 4, 5]) ➞ ["1-5"]

# numbers_to_ranges([3, 4, 5, 10, 11, 12]) ➞ ["3-5", "10-12"]

# numbers_to_ranges([1, 2, 3, 4, 99, 100]) ➞ ["1-4", "99-100"]

# numbers_to_ranges([1, 3, 4, 5, 6, 7, 8]) ➞ ["1", "3-8"]

# Notes
# If there are no numbers consecutive to a number in the array, 
# represent it as only the string version of that number (see example #4).
# Return an empty array if the given array is empty.

def numbers_to_ranges(arr)
  ranges_arr = []
  ranges_arr << arr[0].to_s if arr.size == 1
  string_range = ''
  consecutive_streak = 0

  arr.each_cons(2) do |a, b|
    string_range += a.to_s if consecutive_streak == 0

    if b - a != 1
      if consecutive_streak == 0
        ranges_arr << string_range
        string_range = ''
      else
        string_range += "-#{a}"
        ranges_arr << string_range
        string_range = ''
        consecutive_streak = 0
      end
    else
      consecutive_streak += 1
    end
  end

  if consecutive_streak != 0
    string_range += "-#{arr[-1]}"
    ranges_arr << string_range
  end

  ranges_arr
end