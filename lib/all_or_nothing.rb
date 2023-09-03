# All or Nothing
# Suppose a student can earn 100% on an exam by getting the answers all correct or all incorrect. 
# Given a potentially incomplete answer key and the student's answers, write a function that determines 
# whether or not a student can still score 100%. Incomplete questions are marked with an underscore, "_".

# ["A", "_", "C", "_", "B"]   # answer key
# ["A", "D", "C", "E", "B"]   # student's solution

# ➞ true

# # Possible for student to get all questions correct.

# ["B", "_", "B"]   # answer key
# ["B", "D", "C"]   # student's solution

# ➞ false

# # First question is correct but third is wrong, so not possible to score 100%.

# ["T", "_", "F", "F", "F"]   # answer key
# ["F", "F", "T", "T", "T"]   # student's solution

# ➞ true

# # Possible for student to get all questions incorrect.
# Examples
# possibly_perfect(["B", "A", "_", "_"], ["B", "A", "C", "C"]) ➞ true

# possibly_perfect(["A", "B", "A", "_"], ["B", "A", "C", "C"]) ➞ true

# possibly_perfect(["A", "B", "C", "_"], ["B", "A", "C", "C"]) ➞ false

# possibly_perfect(["B", "_"], ["C", "A"]) ➞ true

# possibly_perfect(["B", "A"], ["C", "A"]) ➞ false

# possibly_perfect(["B"], ["B"]) ➞ true

# Notes
# Test has at least one question.

def possibly_perfect(key, answers)
  incomplete_ans = 0
  right_ans = 0
  wrong_ans = 0
  
  (0..key.size - 1).each do |i|
    if key[i] != '_'
      key[i] == answers[i] ? right_ans += 1 : wrong_ans += 1
    else
      incomplete_ans += 1
    end
  end
  
  right_ans + incomplete_ans == key.size || wrong_ans + incomplete_ans == key.size
end