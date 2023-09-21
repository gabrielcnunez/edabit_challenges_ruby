require 'rspec'
require './lib/count_specific_digit'

RSpec.describe 'Count a Specific Digit' do
  it 'counts the number of times a specific digit occurs within a range of integers' do
   expect(digit_occurrences(51, 55, 5)).to eq(6)
   expect(digit_occurrences(1, 8, 9)).to eq(0)
   expect(digit_occurrences(71, 77, 2)).to eq(1)
   expect(digit_occurrences(1, 14, 4)).to eq(2)
   expect(digit_occurrences(20, 30, 2)).to eq(11)
   expect(digit_occurrences(18, 37, 3)).to eq(10)
   expect(digit_occurrences(5, 335, 6)).to eq(63)
   expect(digit_occurrences(-19, 19, 0)).to eq(3)
   expect(digit_occurrences(-8, -1, 8)).to eq(1)
   expect(digit_occurrences(-5, -5, 4)).to eq(0)
   expect(digit_occurrences(-5, -5, 5)).to eq(1)
   expect(digit_occurrences(-50, -45, 4)).to eq(5)
   expect(digit_occurrences(-500, -45, 4)).to eq(190)
  end
end