# Recursion: Reverse a String
# Write a function that reverses a string. Make your function recursive.

# Examples
# reverse("hello") ➞ "olleh"

# reverse("world") ➞ "dlrow"

# reverse("a") ➞ "a"

# reverse("") ➞ ""

# Notes
# For non-base cases, your function must call itself at least once.
# Check the Resources tab for info on recursion.

def reverse(str, counter = 0)
  return str if counter == str.size

  str_array = str.split('')
  str_array.insert counter, str_array.delete_at(-1)

  new_str = str_array.join
  reverse(new_str, counter + 1)
end