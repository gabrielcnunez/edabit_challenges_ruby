# Initialize
# Create a function that takes in an array of full names and returns the initials.

# Examples
# initialize_names(["Stephen Hawking"]) ➞ ["S. H."]

# initialize_names(["Harry Potter", "Ron Weasley"]) ➞ ["H. P.", "R. W."]

# initialize_names(["Sherlock Holmes", "John Watson", "Irene Adler"]) ➞ ["S. H.", "J. W.", "I. A."]

# Notes
# Each initial is followed by a dot.
# Names will always be made of two words, separated by a space.

def initialize_names(arr)
  arr.map do |str|
    names = str.split
    names[0][0] + '. ' + names[1][0] + '.'
  end
end