# Number to Google
# Create a function that takes an array and returns a string.

# 0 Repeat the actual decrypted value (using like this : 014 to repeat 14 times).
# Warning: When you start a repeat you can't stop it to add other numbers.
# 1, 2, 3, 4 = g, o, l, e
# 5 Corresponding to up case of letter before this.
# 6 Add a point to the end.
# 7 Change case of the first letter.
# 8 Reverse the string.
# 9 Clear the actual decrypted string.

# Examples
# num_to_google(["12213467"]) ➞ "Google."

# num_to_google(["12213467", "321"]) ➞ "Google.log"

# num_to_google(["12213467", "321", "122906"]) ➞ "Google.log"

# num_to_google(["15", "2502", "15", 3545]) ➞ "GOOGLE"

# num_to_google(["15", "2502", "15", 35, 45]) ➞ "GOOGLE"

# num_to_google([15, 202, 1, 3, 4]) ➞ "Google"

# Notes
# N/A

def num_to_google(arr)
  str_arr = arr.map(&:to_s)
  decrypted_arr = []
  i = 0

  str_arr.each do |str|
    next if str.include?('9')

    while i < str.size
      case str[i]
      when '1'
        decrypted_arr << 'g'
        i += 1
      when '2'
        decrypted_arr << 'o'
        i += 1
      when '3'
        decrypted_arr << 'l'
        i += 1
      when '4'
        decrypted_arr << 'e'
        i += 1
      when '5'
        cap_ltr = decrypted_arr.pop.upcase
        decrypted_arr << cap_ltr
        i += 1
      when '6'
        decrypted_arr << '.'
        i += 1
      when '7'
        decrypted_arr[0].capitalize!
        i += 1
      when '8'
        decrypted_arr.reverse!
        i += 1
      when '0'
        decrypted_arr << decrypted_arr[-1] * (str[i + 1].to_i - 1)
        i += 2
      end
    end

    i = 0
  end

  decrypted_arr.join
end