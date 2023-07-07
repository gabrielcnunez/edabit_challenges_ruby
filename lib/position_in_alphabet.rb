# Position in the Alphabet
# Given a number between 1-26, return what letter is at that 
# position in the alphabet. Return "invalid" if the number 
# given is not within that range, or isn't an integer.

# Examples
# letter_at_position(1) ➞ "a"

# letter_at_position(26.0) ➞ "z"

# letter_at_position(0) ➞ "invalid"

# letter_at_position(4.5) ➞ "invalid"

# Notes
# Return a lowercase letter.
# Numbers that end with ".0" are valid.

def letter_at_position(n)
  equivalents = {
    1 => "a",
    2 => "b",
    3 => "c",
    4 => "d",
    5 => "e",
    6 => "f",
    7 => "g",
    8 => "h",
    9 => "i",
    10 => "j",
    11 => "k",
    12 => "l",
    13 => "m",
    14 => "n",
    15 => "o",
    16 => "p",
    17 => "q",
    18 => "r",
    19 => "s",
    20 => "t",
    21 => "u",
    22 => "v",
    23 => "w",
    24 => "x",
    25 => "y",
    26 => "z"
  }

  (n % 1).zero? && n > 0 && n < 27 ? equivalents[n.round(0)] : "invalid"
end