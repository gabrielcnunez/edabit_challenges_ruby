# Simplified Josephus
# Given n people, find the survivor. Starting from the first person, 
# they kill the person to their left and the next surviving person 
# kills the person to their left. This keeps happening until 1 person 
# survives. Return that person's number.

# Examples
# josephus(1) ➞ 1

# josephus(8) ➞ 1

# josephus(41) ➞ 19

# Notes
# Check the resources if you are confused about the instructions.

def josephus(people)
  return 1 if people <= 2

  survivors = (1..people).to_a
  
  until survivors.size == 1
    spared = []

    survivors.each_slice(2) { |a| a.size == 2 ? spared << a[0] : spared.unshift(a[0]) }

    survivors = spared
  end

  survivors[0]
end