# Consonant-Vowel Coding
# Create a function that takes in a sentence and returns a running array of 
# consonants per word and vowels per word.

# Examples
# string_code("Happy Birthday To Me!")
# ➞ ["4 6 1 1", "1 2 1 1"]

# # Consonants - 4 : [H, p, p, y], 6 : [B, r, t, h, d, y], 1: [T], 1 : [M]
# # Vowels - 1: [a], 2 : [i, a], 1: [o], 1: [e]

# string_code("I'd like to drink my first glass of champagne.")
# ➞ [ "1 2 1 4 2 4 4 1 6", "1 2 1 1 0 1 1 1 3"]

# string_code("The first man to walk on the moon was Neil Armstrong.")
# ➞ [ "2 4 2 1 3 1 2 2 2 2 7", "1 1 1 1 1 1 1 2 1 2 2" ]

# Notes

# Count y as a consonant.

# Capitalization does not matter.

# Only count letters and disregard all other characters (e.g. numbers, punctuation, etc).

# A space between numbers is required (["1 2 3", "4 5 6"] vs. ["1,2,3", "4,5,6"]).

def string_code(str)
  vowel_count = []
  consonant_count = []

  str.split(' ').each do |word|
    just_letters = word.gsub(/\W/, '')
    vowels = just_letters.scan(/[^aeiou\W]/i).size
    consonants = just_letters.size - vowels

    vowel_count << vowels.to_s; consonant_count << consonants.to_s
  end

  [vowel_count.join(' '), consonant_count.join(' ')]
end