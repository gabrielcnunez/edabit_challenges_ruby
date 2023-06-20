require 'rspec'
require './lib/stand_in_line'

RSpec.describe 'next_in_line' do
  it 'adds a number to end of array and removes first number' do
    expect(next_in_line([5, 6, 7, 8, 9], 1)).to eq([6, 7, 8, 9, 1])
    expect(next_in_line([7, 6, 3, 23, 17], 10)).to eq([6, 3, 23, 17, 10])
    expect(next_in_line([1, 10, 20, 42], 6)).to eq([10, 20, 42, 6])
    expect(next_in_line([], 6)).to eq("No array has been selected")
    expect(next_in_line([0], 1)).to eq([1])
  end
end