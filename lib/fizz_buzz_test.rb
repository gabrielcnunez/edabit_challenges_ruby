# The Fizz Buzz Test
# Write a program that returns an array of all the numbers from 1 to an integer argument. But for multiples 
# of three use “Fizz” instead of the number and for the multiples of five use “Buzz”. For numbers which are 
# multiples of both three and five use “FizzBuzz”.

# Example
# fizz_buzz(10) ➞ [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz"]

# fizz_buzz(15) ➞ [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]

# Notes
# Make sure to return an array.

def fizz_buzz(int)
  (1..int).map do |i|
    if i % 15 == 0
      "FizzBuzz"
    elsif i % 5 == 0
      "Buzz"
    elsif i % 3 == 0
      "Fizz"
    else
      i
    end
  end
end