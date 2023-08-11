# Letter Distance
# Given two words, the letter distance is calculated by taking the absolute value 
# of the difference in character codes and summing up the difference.

# If one word is longer than another, add the difference in lengths towards the score.

# To illustrate:

# letter_distance("house", "fly") = dist("h", "f") + dist("o", "l") + dist("u", "y") + dist(house.length, fly.length)

# = |104 - 102| + |111 - 108| + |117 - 121| + |5 - 3|
# = 2 + 3 + 4 + 2
# = 11
# Examples
# letter_distance("sharp", "sharq") ➞ 1

# letter_distance("abcde", "Abcde") ➞ 32

# letter_distance("abcde", "bcdef") ➞ 5

# Notes
# Always start comparing the two strings from their first letter.
# Excess letters are not counted towards distance.
# Capital letters are included.

def letter_distance(str1, str2)
  abs_values = []
  abs_values << (str1.size - str2.size).abs

  str1.size > str2.size ? str1 = str1[0, str2.size] : str2 = str2[0, str1.size]
  
  values1 = str1.split('').map(&:ord)
  values2 = str2.split('').map(&:ord)

  values1.each_with_index { |value, i| abs_values << (value - values2[i]).abs }
  abs_values.sum
end