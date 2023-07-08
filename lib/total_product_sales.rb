# Total Sales of Product
# In this question you will be given a table as below, where the first row 
# lists the names of products, and each of row after that lists the sales 
# of the product for each day (over some time range).

# [
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ]

# Write a function that receives:

# A sales table sales_table as shown above.
# The name of a product product.
# ... and returns the total sales if the product is on the array, 
# otherwise return the string "Product not found".

# Examples
# total_sales([
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ], "A") ➞ 9

# # 2 + 3 + 4 = 9


# total_sales([
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ], "C") ➞ 12

# # 1 + 6 + 5 = 12


# total_sales([
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ], "D") ➞ "Product not found"

# Notes
# The examples above all use the same sales table, but in the 
# tests the table will vary.

def total_sales(sales_table, product)
  products = sales_table[0]
  index = products.index(product)

  return "Product not found" unless index

  total = 0

  sales_table[1..-1].each do |row|
    total += row[index]
  end

  total
end