# Powerful Prime Factor
# Create a function that takes a positive integer and returns a string expressing how 
# the number can be made by multiplying powers of its prime factors.

# Examples
# express_factors(2) ➞ "2"

# express_factors(4) ➞ "2^2"

# express_factors(10) ➞ "2 x 5"

# express_factors(60) ➞ "2^2 x 3 x 5"

# Notes
# All inputs will be positive integers in the range 1 < n < 10,000.
# If a factor is repeated express it in the form "x^y" where x is the factor and 
# y is the number of repetitions of the factor.
# If n is a prime number, return n as a string as in example #1 above.
# Factors should appear in ascending order in the expression.
# Make sure you include the space either side of the multiplication sign, " x ".
# Check the Resources if you need to understand Prime Factorization.'

# def express_factors(n)
#   return n.to_s if is_prime?(n)

#   prime_nums = (2..n).select { |i| is_prime?(i) }
#   first_quotient = prime_nums.find { |i| n % i == 0 }
  

# end

# def is_prime?(num)
#   return false if num <= 1
#   return true if num <= 3

#   return false if num % 2 == 0 || num % 3 == 0

#   i = 5
#   while i * i <= num
#     return false if num % i == 0 || num % (i + 2) == 0
#     i += 6
#   end

#   return true
# end

def express_factors(n)
  factors = prime_factors(n)
  expression = []

  factors.uniq.each do |factor|
    count = factors.count(factor)
    expression << (count > 1 ? "#{factor}^#{count}" : factor.to_s)
  end

  expression.join(' x ')
end

def prime_factors(n)
  factors = []
  divisor = 2

  while n > 1
    if n % divisor == 0
      factors << divisor
      n /= divisor
    else
      divisor += 1
    end
  end

  factors
end