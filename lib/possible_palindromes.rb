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
  str.chars.tally.values.count(&:odd?) <= 1
end