# Fibonacci Recursion
# The Fibonacci sequence is a classic use case for recursive functions since the value of 
# the sequence at a given index is dependent on the last two values. More precisely, 
# it's dependent on the sum of the previous two values.

# Write a function named fib that takes an integer n as its input. It should return the 
# Fibonacci sequence's value at index n.

# Examples
# fib(6) ➞ 8
# # 0 + 1 = 1, 1 + 1 = 2, 1 + 2 = 3, 2 + 3 = 5, 3 + 5 = 8

# fib(1) ➞ 1

# fib(2) ➞ 1

# Notes
# You should throw a ValueError if n is less than 0.
# Assume the Fibonacci sequence's first two values (at indices 0 and 1) are 0 and 1.
# You must make fib a recursive function.

# Tips
# You can call a function within itself to get the value a different iteration returns. 
# This is called a "recursive function".
# If you're getting stuck, try looking up the math behind the Fibonacci sequence to see if that inspires you.
# Check the Resources tab for relevant information!

def fib(n)
  sequence = [0, 1]
  
  until sequence[n]
    sequence << sequence[-1] + sequence[-2]
  end

  sequence[n]
end