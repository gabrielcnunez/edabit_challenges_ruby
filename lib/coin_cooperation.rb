# Coin Co-Operation
# Let's say that there exists a machine that gives out free coins, but with a twist!

# Separating two people is a wall, and this machine is placed in such a way that both 
# people are able to access it. Spending a coin in this machine will give the person 
# on the other side 3 coins and vice versa.

# If both people continually spend coins for each other (SHARING), then they'll both 
# gain a net profit of 2 coins per turn. However, there is always the possibility for 
# someone to act selfishly (STEALING): they spend no coins, yet they still receive the 
# generous 3 coin gift from the other person!

# Here's an example of Red taking advantage of Green! Red chose to betray

# The Challenge
# Assuming that both people start with 3 coins each, create a function that calculates 
# both people's final number of coins. You will be given two arrays of strings, with 
# each string being the words "share" or "steal".

# Examples
# get_coin_balances(["share"], ["share"]) ➞ [5, 5]
# # Both people spend one coin, and receive 3 coins each.

# get_coin_balances(["steal"], ["share"]) ➞ [6, 2]
# # Person 1 gains 3 coins, while person 2 loses a coin.

# get_coin_balances(["steal"], ["steal"]) ➞ [3, 3]
# # Neither person spends any coins and so no one gets rewarded.

# get_coin_balances(["share", "share", "share"], ["steal", "share", "steal"]) ➞ [3, 11]

# Notes
# No tests will include a negative number of coins.
# All words will be given in lowercase.
# This challenge is adapted from a famous game theory example called the Prisoner's Dilemma, 
# which you can learn more about in the Resources tab.

def get_coin_balances(arr1, arr2)
  
end