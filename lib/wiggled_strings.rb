# Wiggled Strings
# Create a function that returns an array of the given string but 
# offset by spaces. Here are some more precise instructions:

# Keep adding spaces on the left until you have the same number of 
# spaces as the word length.
# Then keep removing spaces until you reach the original word.
# Below are some helpful examples!

# Examples
# wiggle_string("hello") ➞ [
#   "hello",
#   " hello",
#   "  hello",
#   "   hello",
#   "    hello",
#   "     hello"
#   "    hello",
#   "   hello",
#   "  hello",
#   " hello",
#   "hello"
# ]

# wiggle_string("EDABIT") ➞ [
#   "EDABIT",
#   " EDABIT",
#   "  EDABIT",
#   "   EDABIT",
#   "    EDABIT",
#   "     EDABIT",
#   "      EDABIT",
#   "     EDABIT",
#   "    EDABIT",
#   "   EDABIT",
#   "  EDABIT",
#   " EDABIT",
#   "EDABIT"
# ]

# wiggle_string("Wiggle Time") ➞ [
#   "Wiggle Time",
#   " Wiggle Time",
#   "  Wiggle Time",
#   "   Wiggle Time",
#   "    Wiggle Time",
#   "     Wiggle Time",
#   "      Wiggle Time",
#   "       Wiggle Time",
#   "        Wiggle Time",
#   "         Wiggle Time",
#   "          Wiggle Time",
#   "           Wiggle Time",
#   "          Wiggle Time",
#   "         Wiggle Time",
#   "        Wiggle Time",
#   "       Wiggle Time",
#   "      Wiggle Time",
#   "     Wiggle Time",
#   "    Wiggle Time",
#   "   Wiggle Time",
#   "  Wiggle Time",
#   " Wiggle Time",
#   "Wiggle Time"
# ]

# Notes
# N/A

def wiggle_string(str)
  wig_str = []

  (0..str.length).each { |i| wig_str << (' ' * i) + str }
  (0..str.length - 1).reverse_each { |i| wig_str << (' ' * i) + str }
  
  wig_str
end