# Grocery Store Prices
# You are given an array of strings consisting of grocery items, with 
# prices in parentheses. Return an array of prices in float format.

# Examples
# get_prices(["ice cream ($5.99)", "banana ($0.20)", "sandwich ($8.50)", "soup ($1.99)"]) ➞ [5.99, 0.2, 8.50, 1.99]

# get_prices(["salad ($4.99)"]) ➞ [4.99]

# Notes
# See if you can use RegExp to solve (but it's not necessary).

def get_prices(arr)
  arr.map do |e|
    e.gsub(/\D/, '').to_i / 100.0
  end
end