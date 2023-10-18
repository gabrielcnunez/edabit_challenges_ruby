# Scrabble Scores (Part 2)
# This challenge is based on the game Scrabble. Each word you play is scored based on the point 
# value of each tile/letter (see first table), as well as additional points conferred by any special 
# squares your tiles land on (see second table).

# Create a function that takes an array representing a row of squares in a Scrabble board, and a string 
# representing the word to be played. The array will consist of - representing normal squares, and "DL", 
# "TL", "DW" representing special squares. Return the index of the array where the first letter of the 
# word should be placed to maximise the score of the word to be played. Return the lowest index, if several exist.

# Letter	Points
# A	1
# B	3
# C	3
# D	2
# E	1
# F	4
# G	2
# H	4
# I	1
# J	8
# K	5
# L	2
# M	3
# N	1
# O	1
# P	3
# Q	10
# R	1
# S	1
# T	1
# U	1
# V	4
# W	4
# X	8
# Y	4
# Z	10
# Special Square	Meaning
# DL	Double letter score - doubles the point value of a letter placed on the square
# TL	Triple letter score - triples the point value of a letter placed on the square
# DW	Double word score - doubles the score of an entire word if one of its letters is placed on the square

# Examples

# best_start(["-","DW","-","-","-","TL","-","-","-","TL","-","-","-","DW","-"], "quiz") ➞ 0
# # Doubling the entire word maximises the score. Starting at
# # indices 1,10, and 11 have the same effect, but the function
# # should return the lowest index.

# best_start(["-","DW","-","-","-","TL","-","-","-","TL","-","-","-","DW","-"], "quit") ➞ 5
# # Tripling the first letter alone gives a higher score than
# # doubling the entire word, as the other 3 letters have
# # low point-values.

# best_start(["-","DW","-","-","-","TL","-","-","-","TL","-","-","-","DW","-"], "quart") ➞ 9
# # Tripling the first (high-scoring) letter, and doubling the word.

# best_start(["-","DW","-","-","-","TL","-","-","-","TL","-","-","-","DW","-"], "quartz") ➞ 0
# # Tripling the last (high-scoring) letter, and doubling the word.
# # Index 9 has the same effect (tripling the first letter, doubling
# # the word), but 0 is the lower index.

# Notes
# N/A

def best_start(row, word)
  letter_scores = {
    'a' => 1,
    'b' => 3,
    'c'	=> 3,
    'd'	=> 2,
    'e'	=> 1,
    'f'	=> 4,
    'g'	=> 2,
    'h'	=> 4,
    'i'	=> 1,
    'j'	=> 8,
    'k'	=> 5,
    'l'	=> 2,
    'm'	=> 3,
    'n'	=> 1,
    'o'	=> 1,
    'p'	=> 3,
    'q'	=> 10,
    'r'	=> 1,
    's'	=> 1,
    't'	=> 1,
    'u'	=> 1,
    'v'	=> 4,
    'w'	=> 4,
    'x'	=> 8,
    'y'	=> 4,
    'z'	=> 10
  }

  high_score = 0
  index_pos = 0

  row.each_cons(word.size).with_index do |arr, index|
    word_score = word.chars.map.with_index do |char, i|
      arr[i] == 'TL' ? letter_scores[char] * 3 : letter_scores[char]
    end.sum
    word_score *= 2 if arr.include?('DW')
    if word_score > high_score
      high_score = word_score
      index_pos = index
    end
  end

  index_pos
end