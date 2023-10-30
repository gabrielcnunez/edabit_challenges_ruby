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
  # possible_primes = []

  # (3..num - 3).each { |n| possible_primes << n if (2..Math.sqrt(n)).none? { |i| n % i  == 0 } }
  
  possible_primes = (3..num - 3).map { |n| n if (2..Math.sqrt(n)).none? { |i| n % i  == 0 } }.compact

  prime_pairs = []

  possible_primes.each do |num1|
    possible_primes.each do |num2|
      prime_pairs << [num1, num2] if num1 + num2 == num && num1 <= num / 2
    end
  end

  prime_pairs.map { |arr| "#{arr[0]}+#{arr[1]}" }
end