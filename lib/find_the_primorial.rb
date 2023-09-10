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
  prime_nums = []
  num = 2

  while prime_nums.size < n
    prime_nums << num if (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
    num += 1
  end

  prime_nums.reduce(1, :*)
end