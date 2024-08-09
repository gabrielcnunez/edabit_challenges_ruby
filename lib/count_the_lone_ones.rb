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
    if n == 1
      if !num_array[ind + 1] && num_array[ind - 1] != 1
        lone_ones += 1
      elsif ind - 1 < 0 && num_array[ind + 1] != 1
        lone_ones += 1
      elsif (num_array[ind - 1] >= 0 && num_array[ind - 1] != 1) && (num_array[ind + 1] && num_array[ind + 1] != 1)
        lone_ones += 1
      end
    end
  end
    
  lone_ones
end