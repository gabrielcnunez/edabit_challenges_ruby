require 'rspec'
require './lib/complete_the_square'

RSpec.describe 'Complete the Square (Matrix)' do
  it 'pads a rectangular matrix with zeros to make it square' do
    expect(complete_square(
    [[2, 5]])).to eq(
    [[2, 5],
    [0, 0]])

    expect(complete_square(
    [[2, 5],
    [1, 7]])).to eq(
    [[2, 5],
    [1, 7]])
    
    expect(complete_square(
    [[1, 2],
    [3, 4],
    [5, 6]])).to eq(
    [[1, 2, 0],
    [3, 4, 0],
    [5, 6, 0]])
    
    expect(complete_square(
    [[1, 2, 3, 4],
    [5, 6, 7, 8]])).to eq(
    [[1, 2, 3, 4],
    [5, 6, 7, 8],
    [0, 0, 0, 0],
    [0, 0, 0, 0]])
    
    expect(complete_square(
    [[1, 2, 3, 2, 1],
    [5, 6, 7, 6, 5]])).to eq(
    [[1, 2, 3, 2, 1],
    [5, 6, 7, 6, 5],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0]])

    expect(complete_square(
    [[1, 8, 9],
    [3, 6, 7],
    [5, 4, 5],
    [7, 2, 3],
    [9, 0, 1]])).to eq(
    [[1, 8, 9, 0, 0],
    [3, 6, 7, 0, 0],
    [5, 4, 5, 0, 0],
    [7, 2, 3, 0, 0],
    [9, 0, 1, 0, 0]])
  end
end