# Cowboy Shootout
# Wild Roger is tasked with shooting down 6 bottles with 6 shots as fast as 
# possible. Here are the different types of shots he could make:

# He could use one pistol to shoot a bottle with a "Bang!" in 0.5 seconds.
# Or he could use both pistols at once with a "BangBang!" to shoot two 
# bottles in 0.5 seconds.
# Given an array of Bangs and BangBangs return the time (in seconds) it took 
# to shoot down all 6 bottles. Make sure to only count Bangs and BangBangs. Anything else doesn't count.

# Examples
# roger_shots(["Bang!", "Bang!", "Bang!", "Bang!", "Bang!", "Bang!"]) ➞ 3

# roger_shots(["Bang!", "Bang!", "Bang!", "Bang!", "BangBang!"]) ➞ 2.5

# roger_shots(["Bang!", "BangBangBang!", "Boom!", "Bang!", "BangBang!", "BangBang!"]) ➞ 2

# Notes
# All the bottles will be shot down in all the tests.

# Iterate through the array using an enumerable
# Counter outside of iteration
# Enumerable will add value to counter when "Bang!" or "BangBang!" occurs
# Return the counter

def roger_shots(arr)
  seconds = 0

  arr.each { |str| seconds += 0.5 if str == "Bang!" || str == "BangBang!" }

  seconds
end