# Abbreviations Unique?
# You are given two inputs:

# An array of abbreviations.
# An array of words.
# Write a function that returns true if each abbreviation 
# uniquely identifies a word, and false otherwise.

# Examples
# unique_abbrev(["ho", "h", "ha"], ["house", "hope", "happy"]) ➞ false
# // "ho" and "h" are ambiguous and can identify either "house" or "hope"

# unique_abbrev(["s", "t", "v"], ["stamina", "television", "vindaloo"]) ➞ true

# unique_abbrev(["bi", "ba", "bat"], ["big", "bard", "battery"]) ➞ false

# unique_abbrev(["mo", "ma", "me"], ["moment", "many", "mean"]) ➞ true

# Notes
# Abbreviations will be a substring from [0, n] from the original string.

def unique_abbrev(abbs, words)
  abbs.each do |abb|
    matches = []
    words.each do |word|
      if word.start_with?(abb)
        matches << word
      end
    end
    if matches.size > 1
      return false
      break
    end
  end
  true 
end