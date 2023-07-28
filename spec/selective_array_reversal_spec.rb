require 'rspec'
require './lib/selective_array_reversal'

RSpec.describe 'Selective array reversal' do
  it 'returns an array sorted based on a given number' do
    expect(sel_reverse([1, 2, 3, 4, 5, 6], 2)).to eq([2, 1, 4, 3, 6, 5])
    expect(sel_reverse([2, 4, 6, 8, 10, 12, 14, 16], 3)).to eq([6, 4, 2, 12, 10, 8, 16, 14])
    expect(sel_reverse([5, 7, 2, 6, 0, 4, 6], 100)).to eq([6, 4, 0, 6, 2, 7, 5])
    expect(sel_reverse([6, 0, 0, 0, 3, 8, 9, 7, 1], 9)).to eq([1, 7, 9, 8, 3, 0, 0, 0, 6])
    expect(sel_reverse([12, 54, 67, 34, 65, 34, 33], 0)).to eq([12, 54, 67, 34, 65, 34, 33])
    expect(sel_reverse([12, 54, 67, 34, 65, 34, 33], 1)).to eq([12, 54, 67, 34, 65, 34, 33])
    expect(sel_reverse([22, 13, 22, 13, 13, 22, 22, 13], 5)).to eq([13, 13, 22, 13, 22, 13, 22, 22])
    expect(sel_reverse([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2)).to eq([2, 1, 4, 3, 6, 5, 8, 7, 10, 9])
    expect(sel_reverse([1], 2)).to eq([1])
    expect(sel_reverse([1, 2], 2)).to eq([2, 1])
  end
end