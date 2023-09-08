# Snail Crawl out of the Bucket
# A snail fell into a bucket and wanted to crawl out. Assuming we already know 
# the snail can climb 5cm per minute, the snail can crawl for 30 minutes continuously 
# and then needs to rest for 10 minutes. When it is resting it will slide down 30cm.

# How many minutes will it take for the snail to crawl out from different depths? 
# Create a function that takes the bucket depth (the unit is cm) as an argument and 
# returns the time in minutes.

# if depth = 270
# the snail crawling process
# process: (150 - 30) +  150
# minutes: (30+10) + 150 / 5
# it will take 70 minutes
# the last 150cm, the snail doesn't need a rest
# Examples
# cal(31) ➞ 7

# cal(150) ➞ 30

# cal(200) ➞ 56

# Notes
# The depth is a positive integer.
# If the time is less than one minute it still counts as one minute.