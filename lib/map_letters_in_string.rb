# Map the Letters in a String
# Given a word, create a hash which stores the indexes of each letter in an array.

# Make sure the letters are the keys.
# Make sure the letters are symbols.
# Make sure the indexes are stored in an array and those arrays are values.
# Examples
# map_letters("dodo") ➞ { :d=>[0, 2], :o=>[1, 3] }

# map_letters("froggy") ➞ { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }

# map_letters("grapes") ➞ { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }

# Notes
# All strings given will be lowercase.

def map_letters(word)
  ltrs_mapped = Hash.new {|h,k| h[k] = [] }

  word.each_char.with_index do |char, index|
    ltrs_mapped[char.to_sym].push(index)
  end
  
  ltrs_mapped
end