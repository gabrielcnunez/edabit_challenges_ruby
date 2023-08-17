# Recursion: String Palindromes
# Write a function that recursively determines if a 
# string is a palindrome.

# Examples
# palindrome("abcba") ➞ true

# palindrome("b") ➞ true

# palindrome("") ➞ true

# palindrome("ad") ➞ false

# Notes
# An empty string counts as a palindrome.

def palindrome(str)
  return true if str.size <= 1

  str[0] != str[-1] ? false : palindrome(str[1..-2])
end