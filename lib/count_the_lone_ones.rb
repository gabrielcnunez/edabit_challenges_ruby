# Count the Lone Ones
# Create a function which counts how many lone 1s appear in a given number. 
# Lone means the number doesn't appear twice or more in a row.

# Examples
# count_lone_ones(101) ➞ 2

# count_lone_ones(1191) ➞ 1

# count_lone_ones(1111) ➞ 0

# count_lone_ones(462) ➞ 0

# Notes
# Tests will include positive whole numbers only.

def count_lone_ones(num)
  return 1 if num == 1
  return 0 if num < 10 && num != 1

  num_array = num.digits.reverse
  lone_ones = 0

  num_array.each_with_index do |n, ind|
    next unless n == 1

    before = num_array[ind - 1] if ind - 1 >= 0
    after = num_array[ind + 1] if ind + 1 < num_array.size

    lone_ones += 1 if before != 1 && after != 1
  end
    
  lone_ones
end