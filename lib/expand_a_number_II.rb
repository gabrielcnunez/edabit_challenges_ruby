# Expand a Number II
# Create a function that expands a decimal number into a string as shown below:

# 25.24 ➞ "20 + 5 + 2/10 + 4/100"
# 70701.05 ➞ "70000 + 700 + 1 + 5/100"
# 685.27 ➞ "600 + 80 + 5 + 2/10 + 7/100"
# Examples
# expanded_form(87.04) ➞ "80 + 7 + 4/100"

# expanded_form(123.025) ➞ "100 + 20 + 3 + 2/100 + 5/1000"

# expanded_form(50.270) ➞ "50 + 2/10 + 7/100"

# Notes
# N/A

def expanded_form(num)
  divided_nums = num.to_s.split('.')
  whole_nums = divided_nums[0]
  decimal_nums = divided_nums[1]
  form_string_array = []

  whole_nums.each_char.with_index do |char, i|
    form_string_array << char + '0' * (whole_nums.size - (i + 1)) if char != '0'
  end

  decimal_nums.each_char.with_index do |char, i|
    form_string_array << char + '/1' + ('0' * (i + 1)) if char != '0'
  end

  form_string_array.join(' + ')
end