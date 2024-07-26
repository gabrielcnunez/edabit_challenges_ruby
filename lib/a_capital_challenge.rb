# A Capital Challenge
# Given two strings, s1 and s2, select only the characters in each string where the character in the same position in the other string is in uppercase. Return these as a single string.

# To illustrate, given the strings s1 = "heLLo" and s2 = "GUlp", we select the letters "he" from s1, because "G" and "U" are uppercase. We then select "lp" from s2, because "LL" is in uppercase. Finally, we join these together and return "help".

# Examples
# select_letters("heLLO", "GUlp") ➞ "help"

# select_letters("1234567", "XxXxX")  ➞ "135"

# select_letters("EVERYTHING", "SomeThings") ➞  "EYSomeThings"

# Notes
# The strings don't have to be the same length.
# Strings can contain non-alphabetic characters.

def select_letters(s1, s2)
  combo_string = ''
  s1.chars.each_with_index do |ltr, ind|
    if s2[ind] && s2[ind].match?(/[A-Za-z]/)
      combo_string << ltr if s2[ind] == s2[ind].upcase
    end
  end
  
  s2.chars.each_with_index do |ltr, ind|
    if s1[ind] && s1[ind].match?(/[A-Za-z]/)
      combo_string << ltr if s1[ind] == s1[ind].upcase 
    end
  end

  combo_string
end