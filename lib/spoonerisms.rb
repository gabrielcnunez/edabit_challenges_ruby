# Spoonerisms
# A spoonerism is when the first letters / sounds of two words are transposed onto
# one another. Create a function that takes a two-word string and performs a 
# spoonerism on the phrase.

# Examples
# spoonerise("history lecture") ➞ "listory hecture"

# spoonerise("loud noises") ➞ "noud loises"

# spoonerise("chow mein") ➞ "mow chein"

# spoonerise("edabit rules!") ➞ "redabit ules!"

# Notes
# Only two words will be parsed into the function. Don't worry about handling more 
# than two.
# You won't always just have to swap the first letters, take care to notice which 
# letters have been switched in the examples (notice the difference between 
# vowel-starting and consonant-starting words).

def spoonerize(phr)
  first_word, second_word = phr.split(' ')
  
  first_vowel_index_first_word = first_word.index(/[aeiou]/)
  first_vowel_index_second_word = second_word.index(/[aeiou]/)

  first_spoon = first_word[first_vowel_index_first_word..]
  second_spoon = first_word[0...first_vowel_index_first_word]

  first_first_spoon = second_word[0...first_vowel_index_second_word]
  second_first_spoon = second_word[first_vowel_index_second_word..]

  "#{first_first_spoon}#{first_spoon} #{second_spoon}#{second_first_spoon}"
end