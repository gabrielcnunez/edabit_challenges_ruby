# Password Validation
# Create a function that validates a password to conform to the following rules:

# Length between 6 and 24 characters.
# At least one uppercase letter (A-Z).
# At least one lowercase letter (a-z).
# At least one digit (0-9).
# Maximum of 2 repeated characters.
# "aa" is OK 👍
# "aaa" is NOT OK 👎
# Supported special characters:
# ! @ # $ % ^ & * ( ) + = _ - { } [ ] : ; " ' ? < > , .
# Examples
# validate_password("P1zz@") ➞ false
# // Too short.

# validate_password("iLoveYou") ➞ false
# // Missing a number.

# validate_password("Fhg93@") ➞ true
# // OK!

# Notes
# N/A

def validate_password(str)
  return false unless str.size.between?(6, 24)
  return false unless str.match?(/[A-Z]/) && str.match?(/[a-z]/) && str.match?(/[0-9]/)
  return false unless str.match?(/[a-zA-Z0-9!@#$%^&*()+=_\-{}\[\]:;"'?<>,.]/)
  return false if /(.)\1\1/.match?(str)

  true
end