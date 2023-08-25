# Bring Down the Class Average
# What is the percentage you can score on a test, which singlehandedly brings down 
# the class average by 5%? Given an array of your classmates scores, create a 
# function that returns the answer. Round to the nearest percent.

# Examples
# take_down_average(["95%", "83%", "90%", "87%", "88%", "93%"]) ➞ "54%"

# take_down_average(["10%"]) ➞ "0%"

# take_down_average(["53%", "79%"]) ➞ "51%"

# Notes
# No tests will include empty arrays or require negative percentages.
# Note that you need to return a string.

def take_down_average(arr)
  score_sum = arr.map { |e| e.chop.to_f }.sum
  down_average = score_sum / arr.size - 5

  raw_down_score = (down_average * (arr.size + 1) - score_sum)
  down_score = raw_down_score - raw_down_score.to_i == 0.5 ? raw_down_score.floor : raw_down_score.round

  "#{down_score}%"
end

