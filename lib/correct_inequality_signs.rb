# Correct Inequality Signs
# Create a function that returns true if a given inequality expression is correct and false otherwise.

# Examples
# correct_signs("3 < 7 < 11") ➞ true

# correct_signs("13 > 44 > 33 > 1") ➞ false

# correct_signs("1 < 2 < 6 < 9 > 3") ➞ true

# Notes
# N/A

def correct_signs(str)
  arr = str.split

  (0..(arr.size - 3)).step(2) do |i|
    left = arr[i]
    operator = arr[i + 1]
    right = arr[i + 2]

    if !eval(left + operator + right)
      return false
    end
  end

  return true
end