require 'rspec'
require './lib/squishing_an_array'

RSpec.describe 'Squishing an Array' do
  it 'squishes an array from the left or the right' do
    expect(squish([1, 2, 3, 4, 5], "left")).to eq([[1, 2, 3, 4, 5], [3, 3, 4, 5], [6, 4, 5], [10, 5], [15]])
    expect(squish([1, 0, 2, -3], "left")).to eq([[1, 0, 2, -3], [1, 2, -3], [3, -3], [0]])
    expect(squish([4, 9, -3, 2, 5], "left")).to eq([[4, 9, -3, 2, 5], [13, -3, 2, 5], [10, 2, 5], [12, 5], [17]])
    expect(squish([8, -7, 6, 1, 0, 2], "left")).to eq([[8, -7, 6, 1, 0, 2], [1, 6, 1, 0, 2], [7, 1, 0, 2], [8, 0, 2], [8, 2], [10]])
    expect(squish([8, 7], "left")).to eq([[8, 7], [15]])
    expect(squish([8], "left")).to eq([[8]])
    expect(squish([], "left")).to eq([])

    expect(squish([1, 2, 3, 4, 5], "right")).to eq([[1, 2, 3, 4, 5], [1, 2, 3, 9], [1, 2, 12], [1, 14], [15]])
    expect(squish([1, 0, 2, -3], "right")).to eq([[1, 0, 2, -3], [1, 0, -1], [1, -1], [0]])
    expect(squish([4, 9, -3, 2, 5], "right")).to eq([[4, 9, -3, 2, 5], [4, 9, -3, 7], [4, 9, 4], [4, 13], [17]])
    expect(squish([8, -7, 6, 1, 0, 2], "right")).to eq([[8, -7, 6, 1, 0, 2], [8, -7, 6, 1, 2], [8, -7, 6, 3], [8, -7, 9], [8, 2], [10]])
    expect(squish([8, 7], "right")).to eq([[8, 7], [15]])
    expect(squish([8], "right")).to eq([[8]])
    expect(squish([], "right")).to eq([])
  end
end