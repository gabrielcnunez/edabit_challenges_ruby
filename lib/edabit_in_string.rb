# Is Edabit in the String?
# A string contains the word "edabit" if a subsequence of its characters spell "edabit".

# Write a function that accepts a string and returns “YES” if the string contains 
# a subsequence of the word edabit or "NO" if it does not.

# Examples
# edabit_in_string(“eddaaabt”) ➞ “NO”

# edabit_in_string(“edwardisabletodoit”) ➞ “YES”

# edabit_in_string(“abecdfghijklmnopqrstuvwxyz”) ➞ “NO”

# Notes
# Check the Resources tab for more details on subsequence.

def edabit_in_string(str)
  result = str=~/#{[*'edabit'.chars]*".*"}/
  !result ? "NO" : "YES"
end