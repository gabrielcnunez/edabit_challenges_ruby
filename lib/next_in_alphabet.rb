# Next in the Alphabet
# Create a function which returns the next letters alphabetically in a given 
# string. If the last letter is a "Z", change the rest of the letters accordingly.

# Examples
# next_letters("A") ➞ "B"

# next_letters("ABC") ➞ "ABD"

# next_letters("Z") ➞ "AA"

# next_letters("CAZ") ➞ "CBA"

# next_letters("") ➞ "A"

# Notes
# Tests will all be in CAPITALS.
# Empty inputs should return a capital "A" (as if it were in letter position 0!).
# Think about the letter "Z" like the number 9 and how it carries over to increment 
# the next letter/digit over.

# def next_letters(str)
#   return 'A' if str.empty?

#   chars = str.chars
#   carry = true
#   i = chars.length - 1

#   while i >= 0 && carry
#     if chars[i] == 'Z'
#       chars[i] = 'A'
#     else
#       chars[i] = chars[i].next
#       carry = false
#     end
#     i -= 1
#   end

#   chars.unshift('A') if carry

#   chars.join
# end

def next_letters(str)
  str.empty? ? 'A' : str.succ!
end