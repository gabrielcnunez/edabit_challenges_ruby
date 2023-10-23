# Mod 10 Algorithm
# Create a function that takes a number and checks 
# whethers the given number is a valid credit card 
# number using Luhn Algorithm. The return value is boolean.

# Examples
# valid_credit_card(4111111111111111) ➞ true
# # Visa Card

# valid_credit_card(6451623895684318) ➞ false
# # Not a valid credit card number.

# valid_credit_card(6451623895684318) ➞ false

# Notes
# American Express/VISA/Discover/Diner Club may be the credit card type.
# Check the Resources for help.

def valid_credit_card(num)
  num_array = num.digits

  doubled_nums = num_array.map.with_index do |digit, index|
    if index.odd?
      digit = digit *= 2
      digit.digits.size == 2 ? digit - 9 : digit
    else
      digit
    end
  end

  nums_sum = doubled_nums.sum
  nums_sum % 10 == 0
end