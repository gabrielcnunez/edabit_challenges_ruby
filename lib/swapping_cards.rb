# Swapping Cards
# Two players draw a pair of numbered cards so that both players can form a 
# 2-digit number. A winner can be decided if one player's number is larger than the other.

# However, there is a rule where a player can swap any one of their cards with 
# any one of the other player's cards in a gamble to get a higher number! 
# Note that it is illegal to swap the order of your own cards. That means if you 
# draw a 1 then a 9, you cannot swap them to get 91.

# Numbered Cards

# Paul's strategy is to always swap his lowest number with the opponent's ten's digit. 
# Return whether this results in Paul winning the round.

# n1 is Paul's number
# n2 is his opponent's number
# Worked Example
# swap_cards(41, 79) ➞ true
# # Paul's lowest number is 1
# # The opponent's ten's digit is 7
# # After the swap: 47 > 19
# # Paul wins the round
# Examples
# swap_cards(41, 98) ➞ true

# swap_cards(12, 28) ➞ true

# swap_cards(67, 53) ➞ false

# swap_cards(77, 54) ➞ false
# Notes

# If both of Paul's digits are the same, swap the ten's digit with the opponent's 
# (paul likes to live riskily).
# The cards don't include the number 0.

def swap_cards(n1, n2)
  p1_cards = n1.digits.reverse
  p2_cards = n2.digits.reverse
  cards_to_swap = []

  if p1_cards[1] >= p1_cards[0]
    cards_to_swap << p1_cards.shift
    cards_to_swap << p2_cards.shift
    p1_cards.unshift(cards_to_swap.pop)
    p2_cards.unshift(cards_to_swap.pop)
  else
    cards_to_swap << p1_cards.pop
    cards_to_swap << p2_cards.shift
    p1_cards << cards_to_swap.pop
    p2_cards.unshift(cards_to_swap.pop)
  end

  p1_cards.join.to_i > p2_cards.join.to_i
end