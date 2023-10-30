# Add up to Even Number with Primes
# Create a function that takes an even number (will always be greater than 4) 
# and return an array of all pairs of prime numbers which add up to the given number.

# Examples
# prime_pair_arr(10) ➞ ["3+7", "5+5"]

# prime_pair_arr(50) ➞ ["3+47", "7+43", "13+37", "19+31"]

# prime_pair_arr(100) ➞ ["3+97", "11+89", "17+83", "29+71", "41+59", "47+53"]

# Notes
# N/A

def prime_pair_arr(num)
  possible_primes = (3..num - 3).map { |n| n if (2..Math.sqrt(n)).none? { |i| n % i  == 0 } }.compact

  prime_pairs = []

  possible_primes.take_while { |i| i <= num / 2 }.each do |int1|
    possible_primes.each do |int2|
      prime_pairs << [int1, int2] if int1 + int2 == num
    end
  end

  prime_pairs.map { |arr| "#{arr[0]}+#{arr[1]}" }
end