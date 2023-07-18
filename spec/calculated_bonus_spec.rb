require 'rspec'
require './lib/calculated_bonus'

RSpec.describe 'Calculated bonus' do
  it 'returns a bonus based on the number of days exceeding target' do
    expect(bonus(15)).to eq(0)
    expect(bonus(37)).to eq(1625)
    expect(bonus(50)).to eq(8200)
  end
end