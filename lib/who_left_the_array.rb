# Who Left the Array?
# You are given two arrays. The elements in arr1 threw a party and started to mix around. 
# However, one of the elements got lost! Your task is to return the element which was lost.

# Examples
# missing([1, 2, 3, 4, 5, 6, 7, 8], [1, 3, 4, 5, 6, 7, 8]) ➞ 2

# missing([true, true, false, false, true], [false, true, false, true]) ➞ true

# missing(["Jane", "is", "pretty", "ugly"], ["Jane", "is", "pretty"]) ➞ "ugly"

# missing(["different", "types", "5", 5, [5], {5 => nil}], ["5", "different", [5], "types", 5]) ➞ {5 => nil}

# Notes
# Assume that the first array always contains 1 or more elements.
# Elements are always lost.
# An element can also have duplicates.

def missing(arr1, arr2)
  tally1 = arr1.tally
  tally2 = arr2.tally

  tally1.each { |k, v| return k if v != tally2[k] }
end