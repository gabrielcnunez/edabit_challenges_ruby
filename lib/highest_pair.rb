# Highest Pair
# You will be given a collection of five cards (representing a 
# player's hand in poker). If your hand contains at least one 
# pair, return an array of two elements: true and the card number 
# of the highest pair (trivial if there only exists a single pair). 
# Else, return false.

# Examples
# highest_pair(["A", "A", "Q", "Q", "6" ]) ➞ [true, "A"]

# highest_pair(["J", "6", "3", "10", "8"]) ➞ false

# highest_pair(["K", "7", "3", "9", "3"]) ➞ [true, 3]

# highest_pair(["K", "9", "10", "J", "Q"]) ➞ false

# highest_pair(["3", "5", "5", "5", "5"]) ➞ [true, 5]

# Notes
# Hands with three or more of the same card still count as 
# containing a pair (see the last example).

def highest_pair(cards)
  suit_order = {
    "A" => 1,
    "K" => 2,
    "Q" => 3,
    "J" => 4,
    "10" => 5,
    "9" => 6,
    "8" => 7,
    "7" => 8,
    "6" => 9,
    "5" => 10,
    "4" => 11,
    "3" => 12,
    "2" => 13
  }
  pairs = []
  cards.tally.each do |card, quantity|
    if quantity > 1
      pairs << card
    end
  end
  
  pairs.empty? ? false : [true, pairs.sort_by { |pair| suit_order[pair] }[0]]
end