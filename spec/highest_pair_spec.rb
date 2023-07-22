require 'rspec'
require './lib/highest_pair'

RSpec.describe 'Highest pair' do
  it 'given array of cards, returns whether pair exists with highest pair' do
    expect(highest_pair(['A', 'A', 'K', 'K', '3'])).to eq([true, 'A'])
    expect(highest_pair(['A', 'K', 'Q', 'J', '10'])).to eq(false)
    expect(highest_pair(['A', 'K', 'K', 'K', 'Q'])).to eq([true, 'K'])
    expect(highest_pair(['A', '3', '3', '4', '4'])).to eq([true, '4'])
    expect(highest_pair(['A', 'K', 'Q', 'Q', '5'])).to eq([true, 'Q'])
  end
end