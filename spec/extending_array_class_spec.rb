require 'rspec'
require './lib/extending_array_class'

RSpec.describe 'Extending the Array Class' do
  it 'returns an array of answers for square, cube, divisible by, strictly above and below' do
    expect([1, 2, 3].square).to eq([1, 4, 9])
    expect([1, 2, 3].cube).to eq([1, 8, 27])
    expect([1, 2, 3, 4].divisible_by(2)).to eq([2, 4])
    expect([1, 2, 3, 4].strictly_above(1)).to eq([2, 3, 4])
    expect([1, 2, 3, 4].strictly_below(2)).to eq([1])

    expect([-2, -1, 0, 1].square).to eq([4, 1, 0, 1])
    expect([-2, -1, 0, 1].cube).to eq([-8, -1, 0, 1])
    expect([-2, -1, 0, 1].divisible_by(4)).to eq([0])
    expect([-2, -1, 0, 1].strictly_above(-1)).to eq([0, 1])
    expect([-2, -1, 0, 1].strictly_below(1)).to eq([-2, -1, 0])
  end
end