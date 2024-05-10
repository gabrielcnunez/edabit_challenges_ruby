require 'rspec'
require './lib/palindrome_timestamps'

RSpec.describe 'Palindrome Timestamps' do
  it 'takes two times of days as integers, returns number of palindrome timestamps' do
    expect(palindrome_time(2, 12, 22, 4, 35, 10)).to eq(14)
    expect(palindrome_time(12, 12, 12, 13, 13, 13)).to eq(6)
    expect(palindrome_time(6, 33, 15, 9, 55, 10)).to eq(0)
    expect(palindrome_time(11, 00, 11, 11, 00, 11)).to eq(1)
    expect(palindrome_time(10, 22, 01, 12, 22, 21)).to eq(13)
  end
end