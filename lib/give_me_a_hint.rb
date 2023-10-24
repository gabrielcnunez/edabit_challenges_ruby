# Give Me a Hint
# Given a sentence, return a list of strings 
# which gradually reveals the next letter in 
# every word at the same time. Use underscores 
# to hide the remaining letters.

# Examples
# grant_the_hint("Mary Queen of Scots") ➞ [
#   "____ _____ __ _____",
#   "M___ Q____ o_ S____",
#   "Ma__ Qu___ of Sc___",
#   "Mar_ Que__ of Sco__",
#   "Mary Quee_ of Scot_",
#   "Mary Queen of Scots"
# ]

# grant_the_hint("The Life of Pi") ➞ [
#   "___ ____ __ __",
#   "T__ L___ o_ P_",
#   "Th_ Li__ of Pi",
#   "The Lif_ of Pi",
#   "The Life of Pi"
# ]

# Notes
# Maintain capitalisation.

def grant_the_hint(txt)
  words_array = txt.split
  hints_array = []
  current_sentence = words_array.map { |word| word.gsub(/\S/, '_') }.join(' ')
  hints_array << current_sentence
  
  while current_sentence.include?('_')
    next_hint = current_sentence.split.map.with_index do |word, i|
      if word.include?('_')
        next_letter_index = word.index('_')
        word.sub('_', words_array[i][next_letter_index])
      else
        word
      end
    end.join(' ')

    current_sentence = next_hint
    hints_array << next_hint
  end

  hints_array
end