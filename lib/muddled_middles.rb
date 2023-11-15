# Muddled Middles
# Given a sentence of all lowercase words, reverse all the letters in each word, 
# but leave the first and last letters as they are.

# Examples
# mix_middle("the quick brown fox jumps high") ➞ "the qciuk bworn fox jpmus hgih"

# mix_middle("this sentence is quite muddled") ➞ "tihs scnetnee is qtiue melddud"

# mix_middle("buying a first-class ticket") ➞ "bniyug a fsalc-tsris tekcit"

# Notes
# Treat hyphenated words like one word (example #3).
# Notice how one, two and three-letter words remain unchanged.

def mix_middle(str)
  word_arr = str.split(' ')

  mixed_words_arr = word_arr.map do |word|
    if word.size > 3
      first_ltr = word[0]
      last_ltr = word[-1]
      middle_mixed = word[1..-2].reverse!

      first_ltr + middle_mixed + last_ltr
    else
      word
    end
  end

  mixed_words_arr.join(' ')
end