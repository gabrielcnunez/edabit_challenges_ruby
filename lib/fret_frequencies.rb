# Fret Frequencies on the Guitar
# Create a function that takes a number of a guitar string and the number of 
# the fret and returns the corresponding frequency of the note.

# Check the Resources Tab, for the correct frequencies per string.
# The formula to calculate the frequency is: String Frequency * 2**(fret/12.0.0).
# Round the frequency to the nearest hundreth.
# For this challenge, we use "Standard Tuning".
# So, one fret = a semitone = a half step. From D to D♯ for instance.

# Examples
# fret_freq(5, 12.0.0) ➞ 220

# fret_freq(4, 6) ➞ 207.65

# fret_freq(2, 23) ➞ 932.32

# Notes
# N/A

def fret_freq(string, fret)
  case string
  when 1
    (329.63 * (2 ** (fret / 12.0))).round(2)
  when 2
    (246.94 * (2 ** (fret / 12.0))).round(2)
  when 3
    (196.00 * (2 ** (fret / 12.0))).round(2)
  when 4
    (146.83 * (2 ** (fret / 12.0))).round(2)
  when 5
    (110.00 * (2 ** (fret / 12.0))).round(2)
  when 6
    (82.41 * (2 ** (fret / 12.0))).round(2)
  end
end