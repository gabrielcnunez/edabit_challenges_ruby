require 'rspec'
require './lib/how_many_boxes'

RSpec.describe 'How Many Boxes?' do
  it 'given array of ints as weight of items, return numbers of boxes needed to pack items' do
    expect(boxes([7, 1, 2, 6, 1, 2, 3, 5, 9, 2, 1, 2, 5])).to eq(5)
    expect(boxes([2, 7, 1, 3, 3, 4, 7, 4, 1, 8, 2])).to eq(5)
    expect(boxes([1, 3, 3, 3, 2, 1, 1, 9, 7, 10, 8, 6, 1, 2, 9])).to eq(8)
    expect(boxes([4, 1, 2, 3, 5, 5, 1, 9])).to eq(3)
    expect(boxes([3, 1, 2, 7, 2, 6, 1])).to eq(3)
    expect(boxes([4, 6, 1, 9, 6, 1, 1, 9, 2, 9])).to eq(6)
    expect(boxes([2, 2, 10, 10, 1, 5, 2])).to eq(4)
    expect(boxes([9, 6, 2, 3, 1, 2, 4, 8, 3, 1, 3])).to eq(5)
    expect(boxes([2, 5, 1, 6, 2, 9, 5, 2, 1, 6, 1, 6, 6, 1])).to eq(7)
    expect(boxes([1, 2, 3, 2, 6, 4, 1])).to eq(3)
    expect(boxes([1, 1, 2, 1, 2, 10, 2, 2, 5, 1, 5])).to eq(4)
    expect(boxes([8, 3, 2, 1, 1, 2, 1, 3, 2, 1])).to eq(3)
    expect(boxes([1, 5, 3, 1, 2, 3, 2, 6, 3, 1, 3, 8, 1])).to eq(5)
    expect(boxes([8, 1, 1, 4, 7, 2, 1, 3, 1, 9, 7, 1, 5, 1, 1])).to eq(7)
    expect(boxes([2, 3, 4, 10, 1, 2, 5, 1, 1, 1, 1, 8, 2, 1])).to eq(5)
    expect(boxes([4, 6, 7, 3, 2, 2, 3, 1, 2, 2, 10, 3, 2])).to eq(6)
    expect(boxes([9, 2, 3, 4, 1, 3, 1, 1, 3])).to eq(3)
    expect(boxes([6, 2, 1, 9, 1, 8, 2, 8, 6, 6])).to eq(6)
    expect(boxes([6, 9, 3, 8, 10, 4, 7])).to eq(7)
    expect(boxes([4, 3, 1, 1, 1, 4, 7, 2, 1, 10, 1, 3, 8])).to eq(6)
    expect(boxes([10])).to eq(1)
  end
end