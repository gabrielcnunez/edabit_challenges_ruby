# Swapping Two by Two
# Write a function that swaps the first pair (1st and 2nd characters) with 
# the second pair (3rd and 4th characters) for every quadruplet substring.

# Examples
# swap_two("ABCDEFGH") ➞ "CDABGHEF"

# swap_two("AABBCCDDEEFF") ➞ "BBAADDCCFFEE"

# swap_two("munchkins") ➞ "ncmuinhks"

# swap_two("FFGGHHI") ➞ "GGFFHHI"

# Notes
# Keep leftover strings in the same order.

# def swap_two(str)
#   char_swap = []

#   str.split('').each_slice(4) do |a|
#     a.size == 4 ? char_swap << a[2] << a[3] << a[0] << a[1] : char_swap << a
#   end

#   char_swap.join
# end

def swap_two(str)
  char_array = str.split('')

  char_array.each_slice(4).map { |a| a.size == 4 ? a[2] + a[3] + a[0] + a[1] : a }.join
end
