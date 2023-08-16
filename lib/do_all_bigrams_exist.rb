# Do All Bigrams Exist?
# You are given an input array of bigrams, and an array of words.

# Write a function that returns true if every single bigram from this 
# array can be found at least once in an array of words.

# Examples
# can_find(["at", "be", "th", "au"], ["beautiful", "the", "hat"]) ➞ true

# can_find(["ay", "be", "ta", "cu"], ["maybe", "beta", "abet", "course"]) ➞ false
# # "cu" does not exist in any of the words.

# can_find(["th", "fo", "ma", "or"], ["the", "many", "for", "forest"]) ➞ true

# can_find(["oo", "mi", "ki", "la"], ["milk", "chocolate", "cooks"]) ➞ false

# Notes
# A bigram is string of two consecutive characters in the same word.
# If the array of words is empty, return false.

def can_find(bigrams, words)
  bigrams.each do |bigram|
    return false if words.any? { |word| word.include? bigram } == false
  end

  true
end