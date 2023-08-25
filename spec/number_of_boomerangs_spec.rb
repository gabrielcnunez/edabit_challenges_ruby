require 'rspec'
require './lib/number_of_boomerangs'

RSpec.describe 'Number of Boomerangs' do
  it 'return of boomerangs (three digit sections where first and third are same) in an array' do
    expect(countBoomerangs([9, 5, 9, 5, 1, 1, 1])).to eq(2)
    expect(countBoomerangs([5, 6, 6, 7, 6, 3, 9])).to eq(1)
    expect(countBoomerangs([4, 4, 4, 9, 9, 9, 9])).to eq(0)
    expect(countBoomerangs([5, 9, 5, 9, 5])).to eq(3)
    expect(countBoomerangs([4, 4, 4, 8, 4, 8, 4])).to eq(3)
    expect(countBoomerangs([2, 2, 2, 2, 2, 2, 3])).to eq(0)
    expect(countBoomerangs([2, 2, 2, 2, 3, 2, 3])).to eq(2)
    expect(countBoomerangs([1, 2, 1, 1, 1, 2, 1])).to eq(2)
    expect(countBoomerangs([5, 1, 1, 1, 1, 4, 1])).to eq(1)
    expect(countBoomerangs([3, 7, 3, 2, 1, 5, 1, 2, 2, -2, 2])).to eq(3)
    expect(countBoomerangs([1, 7, 1, 7, 1, 7, 1])).to eq(5)
    expect(countBoomerangs([5, 5, 5])).to eq(0)
  end
end