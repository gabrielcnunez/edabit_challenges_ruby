# Find the Primorial
# A Primorial is a product of the first n prime numbers 
# (e.g. 2 x 3 x 5 = 30). 2, 3, 5, 7, 11, 13 are prime 
# numbers. If n was 3, you'd multiply 2 x 3 x 5 = 30 or Primorial = 30.

# Create a function that returns the Primorial of a number.

# Examples
# primorial(1) ➞ 2

# primorial(2) ➞ 6

# primorial(8) ➞ 9699690

# Notes
# N/A

def primorial(n)
  prime_nums = (2..n ** 2).select { |i| is_prime?(i) }.first(n)

  n == 1 ? 2 : prime_nums.reduce(1, :*)
end

def is_prime?(num)
  return true if num <= 3

  return false if num % 2 == 0 || num % 3 == 0

  i = 5
  while i * i <= num
    return false if num % i == 0 || num % (i + 2) == 0
    i += 6
  end

  return true
end