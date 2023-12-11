# Phone Number Word Decoder
# Create a function that converts a phone number with 
# letters to one with only numbers.

# Number	Letter
# 0	none
# 1	none
# 2	ABC
# 3	DEF
# 4	GHI
# 5	JKL
# 6	MNO
# 7	PQRS
# 8	TUV
# 9	WXYZ
# Examples
# text_to_num("123-647-EYES") ➞ "123-647-3937"

# text_to_num("(325)444-TEST") ➞ "(325)444-8378"

# text_to_num("653-TRY-THIS") ➞ "653-879-8447"

# text_to_num("435-224-7613") ➞ "435-224-7613"

# Notes
# All inputs will be formatted as a string representing a proper 
# phone number in the format XXX-XXX-XXXX or (XXX)XXX-XXXX, 
# using numbers and capital letters.
# Check the Resources tab for more info on telephone keypads.

def text_to_num(phone)
  letter_to_number = {
    'A' => '2', 'B' => '2', 'C' => '2',
    'D' => '3', 'E' => '3', 'F' => '3',
    'G' => '4', 'H' => '4', 'I' => '4',
    'J' => '5', 'K' => '5', 'L' => '5',
    'M' => '6', 'N' => '6', 'O' => '6',
    'P' => '7', 'Q' => '7', 'R' => '7', 'S' => '7',
    'T' => '8', 'U' => '8', 'V' => '8',
    'W' => '9', 'X' => '9', 'Y' => '9', 'Z' => '9'
  }

  phone.gsub(/[A-Z]/, letter_to_number)
end