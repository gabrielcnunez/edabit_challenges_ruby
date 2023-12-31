# Recursion: Count Vowels
# Write a function that recursively returns the number of vowels in a string.

# Examples
# count_vowels("apple") ➞ 2

# count_vowels("cheesecake") ➞ 5

# count_vowels("bbb") ➞ 0

# count_vowels("") ➞ 0
# Notes
# All letters will be in lower case.
# Vowels are: a, e, i, o, u.

def count_vowels(str)
  return 0 if str.empty?
  is_vowel = 'aeiou'.include?(str[0])

  return (is_vowel ? 1 : 0) + count_vowels(str[1..-1])
end