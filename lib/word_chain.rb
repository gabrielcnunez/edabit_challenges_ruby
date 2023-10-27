# Word Chain
# A word-chain is an array of words, where the next word is formed by changing exactly 
# one letter from the previous word. We do not add or subtract letters from words, only change them.

# Create a function that returns true if an array is a word-chain and false otherwise.

# Examples
# is_word_chain(["meal", "seal", "seat", "beat", "beet"]) ➞ true
# # Change "m" in "meal" to get "seal", "l" to get "seat", etc.

# is_word_chain(["red", "bed", "bet", "bat", "sat"]) ➞ true

# is_word_chain(["red", "bat", "cat", "sat"]) ➞ false
# # Do not change more than one letter ("red" and "bat").

# is_word_chain(["read", "red", "led", "lad", "lady"]) ➞ false
# # Do not add or subtract letters.

# Notes
# Each word in a word chain has equal length.
# All words will be in lower case.

def is_word_chain(words)
  words.each_cons(2) do |a, b|
    return false if a[0].size != a[1].size

    same_letters = a.split('') & b.split('')

    return false if same_letters.size != a.size - 1
  end

  true
end