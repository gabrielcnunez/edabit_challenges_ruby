# Lonely Numbers
# Given a number, insert duplicate digits on both sides of all digits which appear in a group of 1.

# Worked Example
# numbers_need_friends_too(22733) ➞ 2277733

# # The number can be split into groups 22, 7, and 33.
# # 7 appears on its own.
# # Put 7s on both sides to create 777.
# # Put the numbers together and return the result.
# Examples
# numbers_need_friends_too(123) ➞ 111222333

# numbers_need_friends_too(56657) ➞ 55566555777

# numbers_need_friends_too(33) ➞ 33

# Notes
# All tests will include positive integers.

def numbers_need_friends_too(num)
  num_string = num.to_s
  friends_string = ''

  num_string.each_char.with_index do |char, i|
    if i == 0
      num_string[i + 1] != char ? friends_string += char * 3 : friends_string += char
    elsif i == num_string.size - 1
      num_string[i - 1] != char ? friends_string += char * 3 : friends_string += char
    else
      num_string[i - 1] != char && num_string [i + 1] != char ? friends_string += char * 3 : friends_string += char
    end
  end

  friends_string.to_i
end