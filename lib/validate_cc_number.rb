# Validate Credit Card Number
# Create a function that takes a number as an argument and returns true if the number is a 
# valid credit card number, false otherwise.

# Credit card numbers must be between 14-19 digits in length, and pass the Luhn test, 
# described below:

# Remove the last digit (this is the "check digit").
# Reverse the number.
# Double the value of each digit in odd-numbered positions. If the doubled value has more 
# than 1 digit, add the digits together (e.g. 8 x 2 = 16 ➞ 1 + 6 = 7).
# Add all digits.
# Subtract the last digit of the sum (from step 4) from 10. The result should be equal to 
# the check digit from step 1.


# Examples
# validate_card(1234567890123456) ➞ false

# # Step 1: check digit = 6, num = 123456789012345
# # Step 2: num reversed = 543210987654321
# # Step 3: digit array after selective doubling: [1, 4, 6, 2, 2, 0, 9, 8, 5, 6, 1, 4, 6, 2, 2]
# # Step 4: sum = 58
# # Step 5: 10 - 8 = 2 (not equal to 6) ➞ false

# validate_card(1234567890123452) ➞ true

# # Same as above, but check digit checks out.
# Notes
# N/A

def validate_card(num)
  digits_array = num.digits
  
  return false if digits_array.size < 14 || digits_array.size > 19

  check_digit = digits_array.shift

  doubled_digits = digits_array.map.with_index do |digit, index|
    if index.even?
      digit = digit *= 2
      digit.digits.size == 2 ? digit.digits.sum : digit
    else
      digit
    end
  end

  digits_sum = doubled_digits.sum
  
  10 - digits_sum.digits.reverse.last == check_digit
end