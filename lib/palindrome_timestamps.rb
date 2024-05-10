# Palindrome Timestamps
# Create a function that takes two times of day (hours, minutes, seconds) 
# and returns the number of occurences of palindrome timestamps within that range, inclusive.

# A palindrome timestamp should be read the same hours : minutes : seconds as 
# seconds : minutes : hours, keeping in mind the seconds and hours digits will reverse. 
# For example, 02 : 11 : 20 is a palindrome timestamp.

# Examples
# palindrome_time(2, 12, 22, 4, 35, 10) ➞ 14

# palindrome_time(12, 12, 12, 13, 13, 13) ➞ 6

# palindrome_time(6, 33, 15, 9, 55, 10) ➞ 0

# Notes
# Expect military time.
# Include the given time parameters if they happen to be palendromes.
# The parameter timestamps are chronological.

def palindrome_time(h1, m1, s1, h2, m2, s2)
	(h1*3600+m1*60+s1..h2*3600+m2*60+s2).count { |s|
        t = "%02d%02d%02d" % [s/3600, (s%3600)/60, s%60]
        t == t.reverse
    }
end
