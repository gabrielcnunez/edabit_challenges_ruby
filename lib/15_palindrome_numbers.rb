# Generate an Array of 15 Palindrome Numbers
# In this challenge, you have to find the last 15 palindromes of all numbers 
# starting from ten and up to a given limit, including the limit in the search.

# Given an integer limit being the upper limit of the range of interest, 
# implement a function that returns the last 15 palindromes numbers lower or 
# equal to limit as an array sorted ascendingly.

# Examples
# generate_palindromes(151) ➞ [
#   11, 22, 33, 44, 55,
#   66, 77, 88, 99, 101,
#   111, 121, 131, 141, 151
# ]

# generate_palindromes(600) ➞ [
#   454, 464, 474, 484, 494,
#   505, 515, 525, 535, 545,
#   555, 565, 575, 585, 595
# ]

# generate_palindromes(999999) ➞ [
#   985589, 986689, 987789, 988889, 989989,
#   990099, 991199, 992299, 993399, 994499,
#   995599, 996699, 997799, 998899, 999999
# ]

# Notes
# N/A

def generate_palindromes(int)
  pal_numbers = []
  
  while pal_numbers.size < 15
    int.downto(11) do |i|
      pal_numbers << i if i.to_s == i.to_s.reverse
      break if pal_numbers.size >= 15
    end
  end

  pal_numbers.reverse
end