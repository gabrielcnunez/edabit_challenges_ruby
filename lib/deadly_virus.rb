# Deadly Virus
# Mubashir needs your help to identify the spread of a deadly virus. 
# He can provide you with the following parameters:

# A two-dimensional array persons, containing affected persons 'V' 
# and unaffected persons 'P'.
# Number of hours n, each infected person is spreading the virus to 
# one person up, down, left and right each hour.
# Your function should return the updated array containing affected 
# and unaffected persons after n hours.

# Examples
# persons = [
#   ["P", "P", "P", "P", "P"],
#   ["V", "P", "P", "P", "P"],
#   ["P", "P", "P", "P", "P"],
#   ["P", "P", "P", "P", "P"],
#   ["P", "P", "P", "P", "P"]
# ]


# deadly_virus(persons, 0) ➞ [
#   ["P", "P", "P", "P", "P"],
#   ["V", "P", "P", "P", "P"],
#   ["P", "P", "P", "P", "P"],
#   ["P", "P", "P", "P", "P"],
#   ["P", "P", "P", "P", "P"]
# ]

# deadly_virus(persons, 1) ➞ [
#   ["V", "P", "P", "P", "P"],
#   ["V", "V", "P", "P", "P"],
#   ["V", "P", "P", "P", "P"],
#   ["P", "P", "P", "P", "P"],
#   ["P", "P", "P", "P", "P"]
# ]

# deadly_virus(persons, 2) ➞ [
#   ["V", "V", "P", "P", "P"],
#   ["V", "V", "V", "P", "P"],
#   ["V", "V", "P", "P", "P"],
#   ["V", "P", "P", "P", "P"],
#   ["P", "P", "P", "P", "P"]
# ]

# Notes
# N/A

def deadly_virus(persons, num)
  return persons if num == 0

  current_infections = persons
  hours_remaining = num

  while hours_remaining > 0
    new_infections = current_infections.map(&:dup)

    current_infections.each_with_index do |row, index|
      row.each_with_index do |person, i|
        if person == 'V'
          new_infections[index - 1][i] = 'V' if index > 0
          new_infections[index + 1][i] = 'V' if index + 1 < current_infections.size
          new_infections[index][i - 1] = 'V' if i > 0
          new_infections[index][i + 1] = 'V' if i + 1 < row.size
        end
      end
    end
    current_infections = new_infections
    hours_remaining -= 1
  end
      
  current_infections
end