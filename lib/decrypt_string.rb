# Decrypt the String from Digits to Letters
# Given a string s consisting from digits and #, translate s to English lowercase characters as follows:

# Characters ("a" to "i") are represented by ("1" to "9").
# Characters ("j" to "z") are represented by ("10#" to "26#").

# Examples
# decrypt("10#11#12") ➞ "jkab"

# decrypt("1326#") ➞ "acz"

# decrypt("25#") ➞ "y"

# Notes
# N/A

def decrypt(s)
  result = ""
  i = 0

  while i < s.length
    if s[i + 2] == "#"
      char_code = s[i, 2].to_i
      i += 3
    else
      char_code = s[i].to_i
      i += 1
    end
    
    result += (char_code + 96).chr
  end

  result
end