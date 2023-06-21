require 'rspec'
require './lib/sliding_sum'

RSpec.describe 'sliding_sum' do
  it 'returns subarrays of a certain number of consecutive elements that sum to a certain amount' do
    expect(sliding_sum([1, 4, 2, 3, 5, 0], 2, 5)).to eq([[1, 4], [2, 3], [5, 0]])
    expect(sliding_sum([5, 5, 5, 5, 5], 1, 5)).to eq([[5], [5], [5], [5], [5]])
    expect(sliding_sum([5, 5, 5, 5, 5], 5, 24)).to eq([])
    expect(sliding_sum([3, 2, 1, 1, 3, 2], 4, 7)).to eq([[3, 2, 1, 1], [2, 1, 1, 3], [1, 1, 3, 2]])
    expect(sliding_sum([3, 4, 1, 9, 9, 0, 3, 5, 4], 3, 8)).to eq([[3, 4, 1], [0, 3, 5]])
  end
end