# Well-Formed Strings
# A string of characters like "({12}[34(56){67}])" is said to be 
# well-formed if every opening brace (square, curly, or parens) 
# has a matching close AND the closing brace comes in the opposite
# order of the opening.

# Valid: "({12}[34(56){67}])"
# Invalid "({12)"
# Invalid "({12)}"
# Write a validator that can determine the well-formed-ness 
# of an input string.

# Here's are two sample interaction patterns:

# In JavaScript
# validate_string("()")
# // => true
# validate_string("([{}[]])")
# // => true
# validate_string("()[")
# // => false
# validate_string("([)]")
# // => false

# In Ruby
# v = StringValidator.new
# v.validate("()")
# # => true
# v.validate("([{}[]])")
# # => true
# v.validate("()[")
# # => false
# v.validate("([)]")
# # => false

class StringValidator
  OPENING_BRACKETS = ['(', '[', '{']
  CLOSING_BRACKETS = [')', ']', '}']

  def validate(input_string)
    stack = []
    input_string.each_char do |char|
      if OPENING_BRACKETS.include?(char)
        stack.push(char)
      elsif CLOSING_BRACKETS.include?(char)
        return false if stack.empty? || !matching_bracket?(stack.pop, char)
      end
    end

    stack.empty?
  end

  private

  def matching_bracket?(opening, closing)
    OPENING_BRACKETS.index(opening) == CLOSING_BRACKETS.index(closing)
  end
end