# Sherlock and Squares
# Watson likes to challenge Sherlock's math ability. He will provide a starting and ending 
# value describing a range of integers. Sherlock must determine the number of square integers 
# within that range, inclusive of the endpoints (note that a square integer is an integer which 
# is the square of an integer, e.g. 1, 4, 9, 16, 25, 36, 49).

# For example, the range is a=24 and b=49, inclusive. There are three square integers in the range: 25, 36 and 49.

# Complete the squares function that returns an integer representing the number of square integers in the inclusive range from a to b.

# Examples
# squares(3, 9) ➞ 2

# squares(17, 24) ➞ 0

# squares(1, 1000000000) ➞ 31622

# Notes
# N/A

# def squares(a, b)
#   square_ints = 0

#   (a..b).each do |num| 
#     sqrt = Math.sqrt(num)
#     square_ints += 1 if sqrt.to_i ** 2 == num
#   end

#   square_ints
# end

def squares(a, b)
  largest_square = Math.sqrt(b).to_i
  smallest_sqaure = Math.sqrt(a).ceil

  square_ints_count = largest_square - smallest_sqaure + 1
end