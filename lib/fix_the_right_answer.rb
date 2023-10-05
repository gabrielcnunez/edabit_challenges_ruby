# Fix the Right Answer
# Create a function that takes a string and returns the right answer.

# Examples
# post_fix("2 2 +") ➞ 4

# post_fix("2 2 /") ➞ 1

# post_fix("8 4 / 9 * 3 1 * /") ➞ 54
# Notes
# The operators + - * / may be supported.
# Output always returns an integer.

# URL: https://edabit.com/challenge/tdMevpjNksRN3ENvy

def post_fix(str)
  nums_array = []
  operators_array = []

  str.split.each { |e| e.ord > 47 ? nums_array << e : operators_array << e }

  fixed_problem_string = nums_array.zip(operators_array).flatten.compact.join(' ')

  eval(fixed_problem_string)
end