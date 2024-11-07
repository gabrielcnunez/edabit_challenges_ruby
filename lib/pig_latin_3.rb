# pigLatin 3.0
# Write a function that converts a sentence into pig latin.

# Rules for converting to pig latin:

# For words that begin with a vowel (a, e, i, o, u), add "way".
# Otherwise, move all letters before the first vowel to the end and add "ay".
# For simplicity, no punctuation will be present in the inputs.
# Examples
# pig_latin_sentence("this is pig latin") ➞ "isthay isway igpay atinlay"

# pig_latin_sentence("wall street journal") ➞ "allway eetstray ournaljay"

# Notes
# All letters will be in lowercase.

def pig_latin_sentence(str)
  str.split.map do |word|
    if word[0].match?(/[aeiou]/)
      word + 'way'
    else
      split_word = word.split(/(?=[aeiou])/, 2)
      split_word[1] + split_word[0] + 'ay'
    end
  end.join(' ')
end