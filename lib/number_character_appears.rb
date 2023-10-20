# Number of Times a Character Appears
# Create a function that returns the number of times a character appears in each word in a sentence. 
# Treat upper and lower case characters of the same letter as being identical (e.g. a exists in Anna 
# twice, not once).

# Examples
# char_appears("She sells sea shells by the seashore.", "s")
# ➞ [1, 2, 1, 2, 0, 0, 2]
# # "s" shows up once in "She", twice in "sells", once in "sea", twice in "shells", etc.

# char_appears("Peter Piper picked a peck of pickled peppers.", "P")
# ➞ [1, 2, 1, 0, 1, 0, 1, 3]
# # "p" shows up once in "Peter", ... 3 times in "peppers".

# char_appears("She hiked in the morning, then swam in the river.", "t")
# ➞ [0, 0, 0, 1, 0, 1, 0, 0, 1, 0]

# Notes
# Ignore case (note that capitalization, in both the sentence and character itself, in examples #1 & #2).

def char_appears(sentence, char)
  sentence_array = sentence.downcase.split
  letter = char.downcase

  sentence_array.map { |word| word.count(letter) }
end