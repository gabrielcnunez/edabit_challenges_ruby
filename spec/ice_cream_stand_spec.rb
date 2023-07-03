require 'rspec'
require './lib/ice_cream_stand'

RSpec.describe 'Ice Cream Stand' do
  it 'should calculate the profit of two ice cream stands based on their coordinates' do
    expect(profit(32, 69)).to eq([51, 50])
    expect(profit(49, 51)).to eq([50, 50])
    expect(profit(25, 26)).to eq([26, 75])
    expect(profit(24, 26)).to eq([25, 75])
    expect(profit(0, 1)).to eq([1, 100])
    expect(profit(3, 6)).to eq([5, 96])
    expect(profit(55, 65)).to eq([60, 40])
    expect(profit(25, 75)).to eq([50, 50])
  end
end