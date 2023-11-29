# A Subtle Switcheroo
# Create a function which replaces all instances of "nts" with "nce" and vice versa if they are at the end of a word.

# Examples
# switcheroo("The elephants in France were chased by ants!") ➞ "The elephance in Frants were chased by ance!"

# switcheroo("While he rants, I fall into a trance...") ➞ "While he rance, I fall into a trants..."

# switcheroo("Bounced over the fence!") ➞ "Bounced over the fents!"

# Notes
# Empty strings should return just an empty string (see example #2).
# Ignore punctuation and any instances where "nts" or "nce" are not at the end of a word (see example #3).

def switcheroo(str)
  str.split(' ').map do |word|
    word_only = word.match(/(\w+)(\W*)/)[1]
    punctuation = word.match(/(\w+)(\W*)/)[2]

    if word_only.end_with?('nts')
      word_only.sub!('nts', 'nce')
    elsif word_only.end_with?('nce')
      word_only.sub!('nce', 'nts')
    end
    
    word_only + punctuation
  end.join(' ')
end