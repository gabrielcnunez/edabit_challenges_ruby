# Letters Formed from the Longest Word
# Write a function that returns true if all the strings in 
# an array can be formed by using only the characters from the longest string.

# Examples
# can_form(["mast", "manifest", "met", "fan"]) ➞ true

# can_form(["may", "master", "same", "reams"]) ➞ false

# can_form(["may", "same", "reams", "mastery"]) ➞ true

# Notes
# There will only be one unique longest string.

def can_form(arr)
  big_word = arr.max_by(&:size)

  arr.all? { |word| word.chars.all? { |char| big_word.include?(char) && big_word.count(char) >= word.count(char)} }
end