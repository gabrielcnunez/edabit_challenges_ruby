# ATM PIN Code Validation
# ATM machines allow 4 or 6 digit PIN codes and 
# PIN codes cannot contain anything but exactly 
# 4 digits or exactly 6 digits. Your task is to 
# create a function that takes a string and returns 
# true if the PIN is valid and false if it's not.

# Examples
# is_valid_PIN("1234") ➞ true

# is_valid_PIN("12345") ➞ false

# is_valid_PIN("a234") ➞ false

# is_valid_PIN("") ➞ false

# Notes
# Some test cases contain special characters.
# Empty strings must return false.

def is_valid_PIN(str)
  /^\d{4}$|^\d{6}$/.match?(str)
end