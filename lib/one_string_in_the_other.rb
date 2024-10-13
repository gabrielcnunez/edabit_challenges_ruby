# Is One String in the Other?
# Create a function that takes two strings and returns true if either of the 
# strings appears at the very end of the other string. Return false otherwise. 
# The character * is a wildcard, so it can take the place of any character.

# Examples
# overlap("ABC", "Ican'tsingmyABC") ➞ true

# overlap("abc", "Ican'tsingmyABC") ➞ true

# overlap("Ican'tsingmyABC", "abc") ➞ true

# overlap("hello world", "hello") ➞ false

# overlap("+=", "this should work too +=") ➞ true

# overlap("hey", "*********") ➞ true
# Notes
# Your function should NOT be case sensitive (see example #2).

def overlap(s1, s2)
  one_chars = s1.downcase
  two_chars = s2.downcase

  if one_chars.size > two_chars.size
    one_chars = one_chars[-two_chars.size..]
  elsif two_chars.size > one_chars.size
    two_chars = two_chars[-one_chars.size..]
  end

  one_chars.chars.each_with_index do |char, i|
    next if char == '*' || two_chars[i] == '*'
    return false if char != two_chars[i]
  end

  true
end