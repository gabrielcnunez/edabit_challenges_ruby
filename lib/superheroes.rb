# Superheroes
# Create a function that takes an array of names of superheroes and superheroines and returns 
# an array of only the names of superheroes ending in "man" in alphabetical order.

# Examples
# superheroes(["Batman", "Superman", "Spider-man", "Hulk", "Wolverine", "Wonder-Woman"])
# ➞ ["Batman", "Spider-man", "Superman"]

# superheroes(["Catwoman", "Deadpool", "Dr.Strange", "Captain-America", "Aquaman", "Hawkeye"])
# ➞ ["Aquaman"]

# superheroes(["Wonder-Woman", "Catwoman", "Invisible-Woman"])
# ➞ []

# Notes
# Wonder-Woman, Catwoman and Invisible-Woman are superheroines.

# Annie
# Iterate through array of strings, assess each name to see if last three characters in string contain 'man' and two characters before do not contain 'wo'
# Watch out for capitalization, sort in alphabetical order using .sort

def superheroes(arr)
  superhero_array = []

  arr.each do |name|
    dc_name = name.downcase

    superhero_array << name if dc_name[-3..-1] == 'man' && dc_name[-5..-4] != 'wo'
  end
  
  superhero_array.sort
end

# def superheroes(arr)
#   arr.find_all { |name| name[-3..-1] == 'man' && name.downcase[-5..-4] != 'wo' }.sort
# end