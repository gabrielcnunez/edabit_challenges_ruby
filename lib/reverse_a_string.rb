# Reverse the Order of a String
# Create a function that takes a string as its argument and returns 
# the string in reversed order without using the built-in .reverse method.

# Examples
# reverse("Hello World") ➞ "dlroW olleH"

# reverse("The quick brown fox.") ➞ ".xof nworb kciuq ehT"

# reverse("Edabit is really helpful!") ➞ "!lufpleh yllaer si tibadE"

# Notes
# You can expect a valid string for all test cases.

# def reverse(str)
#   reverse_string = ""

#   (str.size - 1).downto(0) { |i| reverse_string += str[i] }

#   reverse_string
# end

def reverse(str)
  left = 0
  right = str.length - 1

  while left < right
    str[left], str[right] = str[right], str[left]
    left += 1
    right -= 1
  end

  str
end