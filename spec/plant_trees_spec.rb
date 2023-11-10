require 'rspec'
require './lib/plant_trees'

RSpec.describe 'Plant Trees' do
  it 'return number of trees that can be planted symmetrically' do
    expect(plant_trees(3, 3, 1)).to eq(4)
    expect(plant_trees(3, 3, 3)).to eq(2)
    expect(plant_trees(3, 3, 2)).to eq(0)
    expect(plant_trees(7, 7, 3)).to eq(6)
    expect(plant_trees(3, 3, 0)).to eq(8)
    expect(plant_trees(3, 3, 10)).to eq(0)
  end
end