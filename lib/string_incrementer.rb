# String Incrementer
# Write a function which increments a string to create a new string.

# If the string ends with a number, the number should be incremented by 1.
# If the string doesn't end with a number, 1 should be added to the new string.
# If the number has leading zeros, the amount of digits should be considered.
# Examples
# increment_string("foo") ➞ "foo1"

# increment_string("foobar0009") ➞ "foobar0010"

# increment_string("foo099") ➞ "foo100"

# Notes
# N/A

# def increment_string(str)
#   if str[-1].ord.between?(48, 57)
#     word = []
#     number = []
    
#     str.each_char { |char| char.ord.between?(48, 57) ? number << char : word << char}
    
#     number_index = number.index { |x| x != '0' }
#     unchanged_number = number[number_index..-1].join.to_i
#     changed_number = unchanged_number + 1
    
#     if changed_number.to_s.size == unchanged_number.to_s.size
#       number[number_index..-1] = changed_number.to_s.split('')
#     else
#       number[number_index - 1] == '0' ? number[number_index - 1..-1] = changed_number.to_s.split('') : (number[number_index - 1].to_i + 1).to_s
#     end

#     (word + number).join
#   else
#     str + '1'
#   end
# end

def increment_string(str)
  match = str.match(/(\d+)$/)

  if match
    require 'pry'; binding.pry
    number = match[1]
    incremented_number = (number.to_i + 1).to_s
 
    str.sub(/#{number}$/, incremented_number.rjust(number.length, '0'))
  else
    str + "1"
  end
end