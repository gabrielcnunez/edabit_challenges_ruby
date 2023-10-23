# Primal Strength
# In number theory, a prime number is balanced if it is equidistant from the prime before it and the prime after it. 
# It is therefore the arithmetic mean of those primes. For example, 5 is a balanced prime, two units away from 3, and 
# two from 7. 211 is 12 units away from the previous prime, 199, and 12 away from the next, 223.

# A prime that is greater than the arithmetic mean of the primes before and after it is called a strong prime. It is 
# closer to the prime after it than the one before it. For example, the strong prime 17 is closer to 19 than it is to 13 (see note at bottom).

# A prime that is lesser than the arithmetic mean of the primes before and after it is called weak prime. For example, 19.

# Create a function that takes a prime number as input and returns "Strong" if it is a strong prime, "Weak" if it is a weak prime, or "Balanced".

# Examples
# primal_strength(211) ➞ "Balanced"

# primal_strength(17) ➞ "Strong"

# primal_strength(19) ➞ "Weak"

# Notes
# This definition of strong primes is not to be confused with strong primes as defined in cryptography, which are much 
# more complicated than this. You are all welcome to make a challenge based on cryptographically strong primes.

def primal_strength(num)
  upper_prime = num + 1
  lower_prime = num - 1

  upper_prime += 1 until is_prime?(upper_prime)
  lower_prime -= 1 until is_prime?(lower_prime)

  if upper_prime - num > num - lower_prime
    'Weak'
  elsif upper_prime - num < num - lower_prime
    'Strong'
  else
    'Balanced'
  end
end

def is_prime?(num)
  (2..Math.sqrt(num)).none? { |i| num % i == 0 }
end