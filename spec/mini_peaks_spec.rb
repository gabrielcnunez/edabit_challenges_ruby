require 'rspec'
require './lib/mini_peaks'

RSpec.describe 'Mini Peaks' do
  it 'returns elements in array strictly greater than neighboring elements' do
    expect(mini_peaks([4, 5, 2, 1, 4, 9, 7, 2])).to eq([5, 9])
    expect(mini_peaks([1, 2, 1, 1, 3, 2, 5, 4, 4])).to eq([2, 3, 5])
    expect(mini_peaks([1, 2, 3, 4, 5, 6])).to eq([])
    expect(mini_peaks([6, 4, 3])).to eq([])
    expect(mini_peaks([1, 1, 1, 1, 2, 1, 1, 1])).to eq([2])
    expect(mini_peaks([1, 9, 1, 8, 2, 7, 6])).to eq([9, 8, 7])
    expect(mini_peaks([7, 8, 7, 8, 7, 8, 5, 1, 2, 0])).to eq([8, 8, 8, 2])
  end
end