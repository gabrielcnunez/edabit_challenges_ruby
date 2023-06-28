# Who's The Oldest?
# Given a hash containing the names and ages of a group 
# of people, return the name of the oldest person.

# Examples
# oldest({
#   "Emma" => 71,
#   "Jack" => 45,
#   "Amy" => 15,
#   "Ben" => 29
# }) ➞ "Emma"

# oldest({
#   "Max" => 9,
#   "Josh" => 13,
#   "Sam" => 48,
#   "Anne" => 33
# }) ➞ "Sam"

# Notes
# All ages will be different.

def oldest(people)
  people.sort_by { |name, age| -age }.first[0]
end