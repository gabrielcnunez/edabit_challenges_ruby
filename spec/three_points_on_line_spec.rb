require 'rspec'
require './lib/three_points_on_line'

RSpec.describe 'Determine if Three Points are on a Line' do
  it 'returns true if three points belong on the same' do
    expect(same_line([[0, 0], [1, 1], [3, 3]])).to eq(true)
    expect(same_line([[-2, -1], [2, 1], [0, 0]])).to eq(true)
    expect(same_line([[-2, 0], [-10, 0], [-8, 0]])).to eq(true)
    expect(same_line([[0, 0], [0, 5], [0, 7]])).to eq(true)
    expect(same_line([[9, 9], [8, 8], [6, 6]])).to eq(true)
    expect(same_line([[0, 0], [1, 1], [1, 2]])).to eq(false)
    expect(same_line([[3, 4], [3, 5], [6, 6]])).to eq(false)
    expect(same_line([[9, 8], [8, 8], [6, 6]])).to eq(false)
  end
end