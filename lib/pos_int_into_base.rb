# Positive Integer Into Base 2, 8 and 16
# Create a function that takes a positive integer number 
# (one of base2, base8, or base16) and converts the integer 
# into the given base and returns a string using recursion.

# Examples
# integer_to_string(10 , 2) ➞ "1010"
# # Base = 2

# integer_to_string(1642 , 8) ➞ "3152"
# # Base = 8

# integer_to_string(212 , 16) ➞ "d4"
# # Base = 16

# Notes
# Input is a positive integer and base = 2, 8, or 16.
# Please use recursion to solve this.

HEX = "0123456789abcdef"

def integer_to_string(int, base)
	int > 0 ? integer_to_string(int / base, base) + HEX[int % base] : ""
end