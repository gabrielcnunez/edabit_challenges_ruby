# Shadow Sentences
# Given two sentences, return whether they are shadows of each other. 
# This means that all of the word lengths are the same, but the corresponding 
# words don't share any common letters.

# Examples
# shadow_sentence("they are round", "fold two times") ➞ true

# shadow_sentence("own a boat", "buy my wine") ➞ false
# # No words share common letters, but "a" and "my" have different lengths.

# shadow_sentence("his friends", "our company") ➞ false
# # Word lengths are the same but "friends" and "company" share the letter "n".

# shadow_sentence("salmonella supper", "birthright") ➞ false
# # Setences with different numbers of words.

# Notes
# All sentences will be given in lowercase, and will have no punctuation.
# Return false if the sentences have different numbers of words.

def shadow_sentence(a, b)
  a_words = a.split(' ')
  b_words = b.split(' ')

  return false if a_words.size != b_words.size
  
  range = a_words.size - 1
  return false if (0..range).any? { |i| a_words[i].size != b_words[i].size }
  return false if (0..range).any? { |i| a_words[i].size != b_words[i].size }
  return false if (0..range).any? { |i| a_words[i].chars & b_words[i].chars != [] }

  true
end