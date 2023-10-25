# Reverse Polish Notation
# Create a function to emulate a Reverse Polish Notation calculator.

# Examples
# rpn([1, 2, "*", 4,5, "*" , "+"]) ➞ 22

# rpn([1,1,"+"]) ➞ 2

# rpn([16,16, "/" ]) ➞ 1

# Notes
# Learn more about Reverse Polish Notation in Resources.

def rpn(arr)
  eval_stack = []

  arr.each do |e|
    if e.is_a?(String)
      operands = eval_stack.pop(2)
      
      case e
      when '+'
        eval_stack << operands[0] + operands[1]
      when '-'
        eval_stack << operands[0] - operands[1]
      when '*'
        eval_stack << operands[0] * operands[1]
      when '/'
        eval_stack << operands[0] / operands[1]
      end
    else
      eval_stack << e
    end
  end

  eval_stack[0]
end