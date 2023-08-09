# Working 9 to 5
# Write a function that calculates overtime and pay associated with overtime.

# Working 9 to 5: regular hours
# After 5pm is overtime
# Your function gets an array with 4 values:

# Start of working day, in decimal format, (24-hour day notation)
# End of working day. (Same format)
# Hourly rate
# Overtime multiplier
# Your function should spit out:

# $ + earned that day (rounded to the nearest hundreth)

# Examples
# over_time([9, 17, 30, 1.5]) ➞ "$240.00"

# over_time([16, 18, 30, 1.8]) ➞ "$84.00"

# over_time([13.25, 15, 30, 1.5]) ➞ "$52.50"

# 2nd example explained:

# From 16 to 17 is regular, so 1 * 30 = 30
# From 17 to 18 is overtime, so 1 * 30 * 1.8 = 54
# 30 + 54 = $84.00

def over_time(arr)
  reg_pay_with_ot = (arr[1] - arr[0] - (arr[1] - 17)) * arr[2].to_f
  ot_pay_with_reg = (arr[1] - 17) * arr[2].to_f * arr[3]
  ot_pay = (arr[1] - arr[0]) * arr[2].to_f * arr[3]
  reg_pay = (arr[1] - arr[0]) * arr[2].to_f


  if arr[1] > 17 && arr[0] <= 17
    "$" + '%.2f' % (reg_pay_with_ot + ot_pay_with_reg).round(2)
  elsif arr[0] > 17
    "$" + '%.2f' % ot_pay.round(2)
  else
    "$" + '%.2f' % reg_pay.round(2)
  end
end