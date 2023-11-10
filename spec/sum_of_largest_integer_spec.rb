require 'rspec'
require './lib/sum_of_largest_integer'

RSpec.describe 'Sum of Largest Integer' do
  it 'takes number, returns largest integer less than or equal to number and has highest digit sum' do
    expect(largest_digit_sum(1)).to eq(1)
    expect(largest_digit_sum(2)).to eq(2)
    expect(largest_digit_sum(18)).to eq(18)
    expect(largest_digit_sum(48)).to eq(48)
    expect(largest_digit_sum(100)).to eq(99)
    expect(largest_digit_sum(10)).to eq(9)
    expect(largest_digit_sum(110)).to eq(99)
    expect(largest_digit_sum(2090)).to eq(1999)
    expect(largest_digit_sum(9000000)).to eq(8999999)
  end
end