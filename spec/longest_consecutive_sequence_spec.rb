require 'rspec'
require './lib/longest_consecutive_sequence'

RSpec.describe 'Longest consecutive sequence' do
  it 'given unsorted array of integers, returns length of longest consecutive sequence' do
    expect(longest_consecutive([100,4,200,1,3,2])).to eq(4)
    expect(longest_consecutive([0,3,7,2,5,8,4,6,0,1])).to eq(9)
  end
end