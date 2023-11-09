require 'rspec'
require './lib/tallest_skyscraper'

RSpec.describe 'Tallest Skyscraper' do
  it 'takes a skyline (2-D array of 0s and 1s) and returns height of tallest skyscraper' do
    expect(tallest_skyscraper([
      [0, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [1, 1, 1, 1]
    ])).to eq(3)

    expect(tallest_skyscraper([
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [1, 1, 1, 1]
    ])).to eq(4)

    expect(tallest_skyscraper([
      [0, 0, 0, 0],
      [0, 0, 0, 0],
      [1, 1, 1, 0],
      [1, 1, 1, 1]
    ])).to eq(2)

    expect(tallest_skyscraper([
      [0, 0, 0, 1],
      [0, 0, 0, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1]
    ])).to eq(4)

    expect(tallest_skyscraper([
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [1, 1, 1, 1, 0, 0],
      [1, 1, 1, 1, 1, 1]
    ])).to eq(2)

    expect(tallest_skyscraper([
      [0, 1, 0, 0, 0, 0],
      [0, 1, 0, 0, 0, 0],
      [0, 1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0, 0],
      [1, 1, 1, 1, 1, 1]
    ])).to eq(5)
  end
end