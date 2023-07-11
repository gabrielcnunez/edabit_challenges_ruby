# Next Prime
# Given an integer, create a function that returns the next prime. 

# If the number is prime, return the number itself.

# Examples
# next_prime(12) ➞ 13

# next_prime(24) ➞ 29

# next_prime(11) ➞ 11
# # 11 is a prime, so we return the number itself.

# Notes
# N/A

require 'prime'

def next_prime(num)
  return num unless !num.prime?

  (num..).find { |i| i.prime? }
end