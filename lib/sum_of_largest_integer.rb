# Sum of Largest Integer
# Create a function that takes a number n as an argument and returns the 
# largest integer that is less than or equal to n and has the highest 
# digit sum (see examples below for a better understanding).

# Examples
# largest_digit_sum(100) ➞ 99
# # Digit Sum for 99 = 9 + 9 = 18
# # All numbers from 0 to 98 and 100 itself have digit sum lesser than 18.

# largest_digit_sum(48) ➞ 48
# # Digit sum for 48 = 4 + 8 =12
# # Digit sum for 39 = 3 + 9 =12
# # Return 48 because 48 > 39

# largest_digit_sum(10) ➞ 9

# Notes
# N/A

def largest_digit_sum(num)
  largest_int = num
  highest_sum = num.digits.sum

  (1..num - 1).each do |int|
    sum = int.digits.sum

    if sum > highest_sum
      highest_sum = sum
      largest_int = int
    end
  end

  largest_int
end