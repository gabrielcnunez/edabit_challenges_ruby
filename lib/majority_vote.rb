# Majority Vote
# Create a function that returns the majority vote in an array. 
# A majority vote is an element that occurs > N/2 times in an 
# array (where N is the length of the array).

# Examples
# majority_vote(["A", "A", "B"]) ➞ "A"

# majority_vote(["A", "A", "A", "B", "C", "A"]) ➞ "A"

# majority_vote(["A", "B", "B", "A", "C", "C"]) ➞ nil

# Notes
# The frequency of the majority element must be strictly greater than 1/2.
# If there is no majority element, return nil.
# If the array is empty, return nil.

def majority_vote(arr)
  highest_vote = arr.tally.sort_by(&:last).last
  if highest_vote.nil? || highest_vote[1] <= arr.size * 0.5
    nil
  else
    highest_vote[0]
  end
end