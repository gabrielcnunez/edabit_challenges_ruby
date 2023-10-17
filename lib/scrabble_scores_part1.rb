# Scrabble Scores (Part 1)
# Create a function that takes an array of words, scores the words based on the Scrabble 
# scoring table below, and returns an array of the highest scoring words. The words on the 
# resulting array should be in the same relative order as the original array.

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
# Examples
# best_words(["got", "test", "oh", "sat", "rents"]) ➞ ["oh", "rents"]

# best_words(["digest", "divest", "verge", "honey", "money"]) ➞ ["honey"]

# best_words(["berry", "whiz", "laughed", "ghetto", "psychic"]) ➞ ["whiz", "psychic"]

# Notes
# Input and output should both be arrays (see tests).

def best_words(arr)
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

  highest_score = arr.map do |word|
    sum = 0
    word.each_char.sum { |char| sum += letter_scores[char] }
    
    sum
  end.max

  arr.find_all do |word|
    word.each_char.map { |char| letter_scores[char] }.sum == highest_score
  end
end