# I Put My Prime Down, Flip It and Reverse It
# A prime number is a number whose only proper 
# (non-self) divisor is 1 (example 13).

# An emirp (prime spelled backwards) is a non-palindromic 
# prime which, when its digits are reversed, makes another 
# prime. E.g. 13 is a prime, and so is 31. Both are therefore emirps.

# A bemirp is a prime which is an emirp (makes another prime 
# with its digits reversed), but additionally, makes another 
# prime when flipped upside down (see note). The upside-down 
# version is also an emirp, which makes a group of 4 primes. 
# Bemirps consist only of digits 0, 1, 6, 8, and 9.

# To illustrate: 11061811, reversed = 11816011, upside-down = 11091811, 
# upside-down reversed = 11819011. All four are primes.

# Create a function that takes a number and returns "B" if it’s a bemirp, 
# "E" if it's a (non-bemirp) emirp, "P" if it's a (non-emirp) prime, or "C" (composite / non-prime).

# Examples
# bemirp(101) ➞ "P"

# bemirp(1011) ➞ "C"

# bemirp(1069) ➞ "E"

# bemirp(1061) ➞ "B"

# Notes
# 6 upside-down is 9 and vice-versa. 0, 1, and 8 are unchanged when flipped. The remaining five digits are unflippable.

def bemirp(num)
  if is_prime?(num)
    emirp_prime = num.digits.join.to_i

    if is_prime?(emirp_prime)
      unflippable_digits = ['2', '3', '4', '5', '7']
      return 'E' if unflippable_digits.any? { |digit| num.to_s.include?(digit) }
      bemirp_prime = flip_digits(num)

      is_prime?(bemirp_prime) ? 'B' : 'E'
    else
      'P'
    end
  else
    'C'
  end
end

def is_prime?(num)
  (2..Math.sqrt(num)).none? { |i| num % i == 0 }
end

def flip_digits(num)
  num.digits.reverse.map do |digit|
    case digit
    when 6
      9
    when 9
      6
    else
      digit
    end
  end.join.to_i
end