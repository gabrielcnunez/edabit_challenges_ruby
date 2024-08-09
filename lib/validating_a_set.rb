# Validating a Set in the Set Game
# In the game Set, three cards form a set if each of the cards are identical or 
# completely different for each of the four properties. All three cards must:

# Have the same color or different colors.
# Have the same number or different numbers.
# Have the same shades or different shades.
# Have the same shape or different shapes.
# The four properties are:

# Colors: red, purple, green
# Numbers: 1, 2, 3
# Shades: empty, lined, full
# Shapes: squiggle, oval, diamond
# Here, a set is represented by an array containing three cards. Each card is 
# represented by an object of properties and values. Write a function that 
# determines whether three cards constitute a valid set.

# Here is an example of a set:

# [
#   { "color": "red", "number": 1, "shade": "empty", "shape": "squiggle" },
#   { "color": "red", "number": 2, "shade": "lined", "shape": "diamond" },
#   { "color": "red", "number": 3, "shade": "full", "shape": "oval" }
# ]

# // "Same" properties: color
# // "Different" properties: numbers, shading and shapes
# The following is not a set:

# [
#   { "color": "red", "number": 1, "shade": "empty", "shape": "squiggle" },
#   { "color": "red", "number": 2, "shade": "lined", "shape": "diamond" },
#   { "color": "purple", "number": 3, "shade": "full", "shape": "oval" }
# ]

# // Colors are not all identical, but not all different.
# Examples
# is_set([
#   { "color": "green", "number": 1, "shade": "empty", "shape": "squiggle" },
#   { "color": "green", "number": 2, "shade": "empty", "shape": "diamond" },
#   { "color": "green", "number": 3, "shade": "empty", "shape": "oval" }
# ]) ➞ true

# is_set([
#   { "color": "purple", "number": 1, "shade": "full", "shape": "oval" },
#   { "color": "green", "number": 1, "shade": "full", "shape": "oval" },
#   { "color": "red", "number": 1, "shade": "full", "shape": "oval" }
# ]) ➞ true

# is_set([
#   { "color": "purple", "number": 3, "shade": "full", "shape": "oval" },
#   { "color": "green", "number": 1, "shade": "full", "shape": "oval" },
#   { "color": "red", "number": 3, "shade": "full", "shape": "oval" }
# ]) ➞ false

# Notes
# A set cannot have 2/3 cards having the same property. Either all must share 
# that property, or none will share that particular property.
# You can play Set by checking the Resources tab.

# def is_set(cards)
#   card_properties = Hash.new(0)
  
#   cards.each do |card|
#     card.each_value do |value|
#       card_properties[value] += 1
#     end
#   end

#   !card_properties.values.include?(2)
# end

def is_set(cards)
  properties = [:color, :number, :shade, :shape]

  properties.all? do |property|
    values = cards.map { |card| card[property] }
    values.uniq.size == 1 || values.uniq.size == 3
  end
end
