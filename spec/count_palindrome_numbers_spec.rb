require 'rspec'
require './lib/count_palindrome_numbers'

RSpec.describe 'Count Palindrome Numbers in a Range' do
  it 'given range of integer numbers, returns number of palindrome numbers' do
    expect(count_palindromes(1, 10)).to eq(9)
    expect(count_palindromes(555, 556)).to eq(1)
    expect(count_palindromes(878, 898)).to eq(3)
    expect(count_palindromes(8, 34)).to eq(5)
    expect(count_palindromes(1550, 1556)).to eq(1)
  end
end