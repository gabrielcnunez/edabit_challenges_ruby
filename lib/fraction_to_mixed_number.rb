# Fraction to Mixed Number
# Create a function that takes a string representing a fraction, and return a 
# string representing that input as a mixed number.

# Mixed numbers are of the form 1 2/3 — note the space between the whole number 
# portion and the fraction portion.
# Resulting fractions should be fully reduced (see example #2).
# If a result is a whole number with no fractional remainder, return only the 
# whole number portion (see example #3).
# If a result is only fractional with no whole number, return only the fractional 
# portion (see example #4).
# If a result is negative, the whole number should carry the negative sign. If the 
# result would not have a whole number portion, the numerator of the fractional 
# portion should carry the negative sign (see examples #5 - #7).

# Examples
# mixed_number("5/4") ➞ "1 1/4"

# mixed_number("6/4") ➞ "1 1/2"

# mixed_number("8/4") ➞ "2"

# mixed_number("4/6") ➞ "2/3"

# mixed_number("-1/4") ➞ "-1/4"

# mixed_number("-5/4") ➞ "-1 1/4"

# mixed_number("-8/4") ➞ "-2"

# Notes
# All provided inputs will be formatted similarly, negative numbers will be provided
# in the numerator portion only, and all inputs will contain no spaces, invalid 
# characters, or zero denominators.

# def mixed_number(frac)
#   split_frac = frac.split('/')
#   negator = split_frac[0].slice!(0) if split_frac[0].start_with?('-')
#   numerator = split_frac[0].to_i
#   denominator = split_frac[1].to_i
 
#   return "#{numerator}" if numerator == 0
  
#   if numerator % denominator == 0
#     whole_num = numerator / denominator
#     return negator.nil? ? "#{whole_num}" : "#{negator}#{whole_num}"
#   end

#   if numerator > denominator      
#     whole_num = (numerator.to_f / denominator).floor
#     remainder = numerator - (denominator * whole_num)
#     gcd = (numerator).gcd(denominator)

#     if gcd != 1
#       remainder /= gcd
#       denominator /= gcd
#     end
#   else
#     gcd = (numerator).gcd(denominator)

#     if gcd != 1
#       numerator /= gcd
#       denominator /= gcd
#     end
#   end

#   if !whole_num
#     negator.nil? ? "#{numerator}/#{denominator}" : "#{negator}#{numerator}/#{denominator}"
#   else
#     negator.nil? ? "#{whole_num} #{remainder}/#{denominator}" : "#{negator}#{whole_num} #{remainder}/#{denominator}"
#   end 
# end

def mixed_number(frac)
  numerator, denominator = frac.split('/').map(&:to_i)
  is_negative = numerator < 0
  numerator = numerator.abs
  
  return "0" if numerator == 0

  whole_num = numerator / denominator
  remainder = numerator % denominator
  
  if remainder == 0
    return is_negative ? "-#{whole_num}" : "#{whole_num}"
  end

  gcd = remainder.gcd(denominator)
  remainder /= gcd
  denominator /= gcd

  if whole_num == 0
    return is_negative ? "-#{remainder}/#{denominator}" : "#{remainder}/#{denominator}"
  else
    return is_negative ? "-#{whole_num} #{remainder}/#{denominator}" : "#{whole_num} #{remainder}/#{denominator}"
  end
end