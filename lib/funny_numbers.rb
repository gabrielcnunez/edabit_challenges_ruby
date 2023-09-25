# Funny Numbers
# Mubashir was playing with some numbers. He observed some funny numbers.

# Funny Numbers
# 89 --> 8¹ + 9² = 89 * 1

# 695 --> 6² + 9³ + 5⁴ = 1390 = 695 * 2

# 46288 --> 4³ + 6⁴ + 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51
# Create a function which takes a number n and a positive integer p and returns 
# a positive integer k, such as the sum of the digits of n taken to the successive powers of p is equal to k * n.

# In other words, is there an integer k such as:

# (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ... ) = n * k
# # A given number = n
# # A given positive integer = p
# # Digits of the given number = a, b, c, d ...
# # A positive integer = k
# Your function should return nil if k is not found.

# Examples
# funny_numbers(89, 1) ➞ 1
# # since 8¹ + 9² = 89 = 89 * 1

# funny_numbers(92, 1) ➞ nil
# # since there is no k such as 9¹ + 2² equals 92 * k

# funny_numbers(695, 2) ➞ 2
# # 6² + 9³ + 5⁴= 1390 = 695 * 2

# Notes
# Given number and power will always >=1

def funny_numbers(n, p)
  
end