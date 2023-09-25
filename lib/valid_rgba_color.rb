# Is It a Valid RGB(A) Color?
# Given an RGB(A) CSS color, determine whether its format is valid 
# or not. Create a function that takes a string (e.g. "rgb(0, 0, 0)") 
# and return true if it's format is correct, otherwise return false.

# Examples
# valid_color("rgb(0,0,0)") ➞ true

# valid_color("rgb(0,,0)") ➞ false

# valid_color("rgb(255,256,255)") ➞ false

# valid_color("rgba(0,0,0,0.123456789)") ➞ true

# Notes
# Alpha is between 0 and 1.
# There are a few edge cases (check out the Tests tab to know more).

def valid_color(str)
  return false if str =~ /\s+\(/
  
  nums_array = str[/\((.*?)\)/, 1].split(',')

  return false if nums_array.include?('')
  
  colors_array = nums_array[0, 3].map(&:to_i)
  alpha_value = nums_array[3]

  return false if (str.include?('a') && !alpha_value) || (!str.include?('a') && alpha_value)

  if str.include?('%')
    return false if colors_array.any? { |i| i < 0 || i > 100 }
  else
    return false if colors_array.any? { |i| i < 0 || i > 255 }
  end

  if alpha_value 
    return false if alpha_value.to_f < 0 || alpha_value.to_f > 1
  end

  true
end