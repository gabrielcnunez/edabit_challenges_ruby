# Retrieve Name from Email Address
# Create a function that takes an email address and returns the name in the address.

# The "name" is the letters/alphabetical characters before the @ in the address.
# The "name" will not always be an actual name.
# Email addresses will end in something like @domain.com
# Examples
# get_name("yourname@example.com") ➞ "yourname"

# get_name("john64@gmail.com") ➞ "john"

# get_name("pamela78_Cole@hotmail.com") ➞ "pamelaCole"

# get_name("Chickenlololol29@yahoo.com") ➞ "Chickenlololol"

# Notes
# Keep the original capitalization in the email address.
# All email addresses are purely made-up. It is a coincidence if 
# any of the test email addresses actually exists.

def get_name(address)
  left_side = address.split('@')[0]

  left_side.scan(/[a-zA-Z]/).join
  # require 'pry'; binding.pry
end