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
  hex_string = '#'
  hex_conventer = {
    10 => 'a',
    11 => 'b',
    12 => 'c',
    13 => 'd',
    14 => 'e',
    15 => 'f'
  }

  rgb_string = str[/\(.*?\)/].delete('()').split(',')
  rgb_ints = rgb_string.map { |e| e.strip.to_i }

  rgb_ints.each do |int|
    hex_nums = []
    hex_nums << int / 16
    hex_nums << int % 16

    hex_nums.each { |num| num < 10 ? hex_string << num.to_s : hex_string << hex_conventer[num] }
  end
  hex_string
end