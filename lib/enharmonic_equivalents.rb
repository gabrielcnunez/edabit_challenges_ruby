# Enharmonic Equivalents
# In music, notes can be written out in multiple ways 
# (especially for notes on the black keys). Although 
# these notes are spelled out differently, they still 
# are the same note physically.

# C# = Db, D# = Eb, F# = Gb, G# = Ab, A# = Bb

# Given a musical note, create a function that returns its enharmonic equivalent. The examples below should make this clear.

# Examples
# get_equivalent("D#") ➞ "Eb"

# get_equivalent("Gb") ➞ "F#"

# get_equivalent("Bb") ➞"A#"

# Notes
# Note names will always be a capital letter followed by either # or b.
# Remember that the note after G is A and vice versa.

def get_equivalent(note)
  if note == "G#"
    "Ab"
  elsif note == "Ab"
    "G#"
  elsif note.end_with?("#")
    (note[0].ord + 1).chr + "b"
  else
    (note[0].ord - 1).chr + "#"
  end
end