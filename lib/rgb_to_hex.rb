# RGB to Hex Color Converter
# Create a function that converts color in RGB format 
# to Hex format.

# Examples
# rgb_to_hex("rgb(0, 128, 192)") ➞ "#0080c0"

# rgb_to_hex("rgb(45, 255, 192)") ➞ "#2dffc0"

# rgb_to_hex("rgb(0, 0, 0)") ➞ "#000000"
# Notes
# The Hex format should be displayed in lowercase.



def rgb_to_hex(str)
  rgb_ints = str.scan(/\d+/).map(&:to_i)
  hex_values = rgb_ints.map { |int| int.to_s(16).rjust(2, '0') }.join

  '#' + hex_values
end