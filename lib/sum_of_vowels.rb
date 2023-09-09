# Sum of v0w3ls
# Create a function that takes a string and returns the sum of 
# vowels, where some vowels are considered numbers.

# Vowel	Number
# A	4
# E	3
# I	1
# O	0
# U	0

# Examples
# sum_of_vowels("Let\'s test this function.") ➞ 8

# sum_of_vowels("Do I get the correct output?") ➞ 10

# sum_of_vowels("I love edabit!") ➞ 12

# Notes
# Vowels are case-insensitive (e.g. A = 4 and a = 4).

def sum_of_vowels(str)
  vowel_sum = 0

  str.each_char do |char|
    case char
    when 'A', 'a'
      vowel_sum += 4
    when 'E', 'e'
      vowel_sum += 3
    when 'I', 'i'
      vowel_sum += 1
    end
  end

  vowel_sum
end