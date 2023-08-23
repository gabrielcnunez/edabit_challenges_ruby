# When Will You Save a Million?
# You landed your dream job. They pay in geometric progression (see resources). In your first 
# month of work, you will get your first paycheck first_month. For every month after, your 
# paycheck will be multiplier times bigger than the previous paycheck.

# Create a function that takes the first_month's paycheck and the multiplier and returns the 
# number of months it took for you to save up more than one million. The problem assumes you save 100% of every paycheck.

# Examples
# million_in_month(10, 2) ➞ 17

# million_in_month(100, 1.01) ➞ 464

# million_in_month(50, 100) ➞ 4
# # Month 1 = 50 (paycheck 50)
# # Month 2 = 5050 (paycheck 5,000 + 50 already saved)
# # Month 3 = 505050 (paycheck 500,000 + 5,050 already saved)
# # Month 4 = 50505050 (paycheck 50,000,000 + 505,050 already saved)

# Notes
# Don't forget to return the result in the number of months.
# Return when your savings are greater than 1,000,000.

def million_in_month(first_month, multiplier)
  current_balance = first_month
  number_of_months = 1
  current_paycheck = first_month

  until current_balance >= 1e6
    current_paycheck *= multiplier
    current_balance += current_paycheck
    number_of_months += 1
  end

  number_of_months
end