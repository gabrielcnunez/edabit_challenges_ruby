require 'rspec'
require './lib/less_or_equal'

RSpec.describe 'Less or Equal' do
  it '' do
    expect(less_or_equal([3, 7, 6, 1, 10, 3, 20], 4)).to eq(6)
    expect(less_or_equal([3, 7, 6, 1, 10, 3, 20], 2)).to eq(nil)
    expect(less_or_equal([1, 1, 2, 3, 4], 3)).to eq(2)
    expect(less_or_equal([1, 1, 2, 3, 4], 2)).to eq(1)
    expect(less_or_equal([1, 1, 2, 3, 4], 1)).to eq(nil)
    expect(less_or_equal([10, 15, 20, 25], 0)).to eq(1)
    expect(less_or_equal([2, 2, 2, 3, 5, 7, 8], 2)).to eq(nil)
    expect(less_or_equal([3, 7, 5, 1, 10, 3, 20], 2)).to eq(nil)
    expect(less_or_equal([3, 7, 5, 1, 10, 3, 20], 4)).to eq(5)
    expect(less_or_equal([1], 0)).to eq(nil)
    expect(less_or_equal([2], 0)).to eq(1)
    expect(less_or_equal([1000000000], 1)).to eq(1000000000)
    expect(less_or_equal([1000000000 , 1000000000 , 1000000000 , 1000000000], 4)).to eq(1000000000)
    expect(less_or_equal([1, 3, 3, 4, 5], 3)).to eq(3)
    expect(less_or_equal([1000000000], 1)).to eq(1000000000)
    expect(less_or_equal([100000000, 100000000], 2)).to eq(100000000)
    expect(less_or_equal([3, 4, 5, 6, 7], 0)).to eq(1)
  end
end