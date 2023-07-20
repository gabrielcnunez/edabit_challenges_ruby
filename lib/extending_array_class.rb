# Extending the Array Class
# Write the following functions to extend the array class, by adding the methods:

# square()
# cube()
# divisible_by(x)
# strictly_above(x)
# strictly_below(x)

# Examples
# [1, 2, 3].square ➞ [1, 4, 9]

# [1, 2, 3].cube ➞ [1, 8, 27]

# [1, 2, 3, 4].divisible_by(2) ➞ [2, 4]

# [1, 2, 3, 4].strictly_above(1) ➞ [2, 3, 4]

# [1, 2, 3, 4].strictly_below(2) ➞ [1]

# Notes
# N/A

class Array
  def square
    self.map { |i| i**2 }
  end

  def cube
    self.map { |i| i**3 }
  end

  def divisible_by(num)
    self.select { |i| i % num == 0 }
  end

  def strictly_above(num)
    self.select { |i| i > num }
  end

  def strictly_below(num)
    self.select { |i| i < num }
  end
end