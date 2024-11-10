# Possible Palindrome
# Create a function that determines whether it is possible to 
# build a palindrome from the characters in a string.

# Examples
# possible_palindrome("acabbaa") ➞ true
# # Can make the following palindrome: "aabcbaa"

# possible_palindrome("aacbdbc") ➞ true
# # Can make the following palindrome: "abcdcba"

# possible_palindrome("aacbdb") ➞ false

# possible_palindrome("abacbb") ➞ false

# Notes
# N/A

def possible_palindrome(str)
  odd_chars = 0
  char_values = str.chars.tally.values
  char_values.each { |value| odd_chars += 1 if value.odd? }

  odd_chars <= 1
end