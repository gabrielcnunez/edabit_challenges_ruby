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

def decrypt(str)
  num_array = convert_string_to_array(str)
  string_decrypted = ''

  num_array.each { |n| string_decrypted += (n + 96).chr }

  string_decrypted
end

def convert_string_to_array(str)
  result = []
  current_num = ''

  str.each_char do |char|
    if char == '#'
      result << current_num.slice!(0..-3).to_i.digits.reverse if current_num.size > 2
      result << current_num.to_i
      current_num = ''
    else
      current_num += char
    end
  end

  result << current_num.to_i.digits.reverse if current_num != ''
  result.flatten
end