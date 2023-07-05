# String Slice-athon
# This challenge has five miniature exercises to help practice 
# proficiency in string slicing. Check the examples below for 
# a visual indicator of how to slice the strings. Good luck!

# Examples
# txt = "abcdefghijklmnopqrstuvwxyz"
# challenge1(txt) ➞ "abcde"
# # First 5 characters of the string.

# challenge2(txt) ➞ "vwxyz"
# # Last 5 characters of the string.

# challenge3(txt) ➞ "zyxwvutsrqponmlkjihgfedcba"
# # All characters in the string from back.

# challenge4(txt) ➞ "fedcba"
# # First 6 characters in the string (start with 6th character and go backwards).

# challenge5(txt) ➞ "tvxz"
# # Take last 7 characters and only return odd positioned ones.

# Notes
# Check the Tests tab for more examples.
# See the Resources tab for further information on learning string slicing.
# You are not allowed to concatenate strings together! Results must 
# be achieved purely through string slicing!

def challenge1(str)
  str[0, 5]
end

def challenge2(str)
  str[-5, 5]
end

def challenge3(str)
  str[0..-1].reverse
end

def challenge4(str)
  str[0..5].reverse
end

def challenge5(str)
  str[-7..].gsub(/(.)./,'\1')
end