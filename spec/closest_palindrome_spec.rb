require 'rspec'
require './lib/closest_palindrome'

RSpec.describe 'Closest Palindrome' do
  it 'returns the closest palindrome number to an integer' do
    expect(closest_palindrome(887)).to eq(888)
    expect(closest_palindrome(888)).to eq(888)
    expect(closest_palindrome(27)).to eq(22)
    expect(closest_palindrome(519)).to eq(515)
    expect(closest_palindrome(4892)).to eq(4884)
    expect(closest_palindrome(1)).to eq(1)
    expect(closest_palindrome(100)).to eq(99)
    expect(closest_palindrome(33344)).to eq(33333)
    expect(closest_palindrome(123456)).to eq(123321)
    expect(closest_palindrome(978215236)).to eq(978212879)
  end
end