require 'rspec'
require './lib/swap_the_numbers'

RSpec.describe 'Swap the Numbers' do
  it 'given three integers, return unique integer w/o using conditional statements, functions' do
    expect(swap(1, 0, 0)).to eq(1)
    expect(swap(1, 3, 1)).to eq(3)
    expect(swap(27, 31, 31)).to eq(27)
    expect(swap(1, 2, 2)).to eq(1)
    expect(swap(-3, 4, -3)).to eq(4)
    expect(swap(-2, 1, 1)).to eq(-2)
    expect(swap(0, 2, 2)).to eq(0)
    expect(swap(9, -9, 9)).to eq(-9)
    expect(swap(-3, -29, -3)).to eq(-29)
    expect(swap(-29, -3, -3)).to eq(-29)
  end
end