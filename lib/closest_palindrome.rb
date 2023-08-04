# Closest Palindrome Number
# Write a function that returns the closest palindrome number 
# to an integer. If two palindrome numbers tie in absolute 
# distance, return the smaller number.

# Examples
# closest_palindrome(887) ➞ 888

# closest_palindrome(100) ➞ 99
# # 99 and 101 are equally distant, so we return the smaller palindrome.

# closest_palindrome(888) ➞ 888

# closest_palindrome(27) ➞ 22

# Notes
# If the number itself is a palindrome, return that number.

def closest_palindrome(num)
  return num if palindrome?(num)

  high_pal = higher_palindrome(num)
  low_pal = lower_palindrome(num)

  num - low_pal <= high_pal - num ? low_pal : high_pal
end

def higher_palindrome(num)
  num += 1
  num += 1 until palindrome?(num)
  num
end

def lower_palindrome(num)
  num -= 1
  num -= 1 until palindrome?(num)
  num
end

def palindrome?(num)
  num.to_s == num.to_s.reverse
end