require 'rspec'
require './lib/larger_than_all_to_right'

RSpec.describe 'Larger than All Numbers to Their Right' do
  it 'takes array and retrieves every number strictly larger than every number to left' do
    expect(larger_than_right([3, 13, 11, 2, 1, 9, 5])).to eq([13, 11, 9, 5])
    expect(larger_than_right([9, 8, 7, 6])).to eq([9, 8, 7, 6])
    expect(larger_than_right([1, 2, 3, 4])).to eq([4])
    expect(larger_than_right([5, 9, 8, 7])).to eq([9, 8, 7])
    expect(larger_than_right([5, 5, 5, 5, 5])).to eq([5])
  end
end