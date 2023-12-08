require 'rspec'
require './lib/check_magic_square'

RSpec.describe 'Check Magic Square' do
  it 'takes 2-D array, return whether all rows, columns, and diagonals equal same number' do
    expect(is_magic_square([
      [8, 1, 6],
      [3, 5, 7],
      [4, 9, 2]
    ])).to eq(true)

    expect(is_magic_square([
      [16, 3, 2, 13],
      [5, 10, 11, 8],
      [9, 6, 7, 12],
      [4, 15, 14, 1]
    ])).to eq(true)

    expect(is_magic_square([
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ])).to eq(false)
  end
end