require 'rspec'
require './lib/cup_swapping'

RSpec.describe 'Cup Swapping' do
  it 'returns sting letter position of ball once cup swapping is completed' do
    expect(cup_swapping(['AB', 'CA'])).to eq('C')
    expect(cup_swapping(['AB', 'CA', 'AB'])).to eq('C')
    expect(cup_swapping(['AC', 'CA', 'CA', 'AC'])).to eq('B')
    expect(cup_swapping(['BA', 'AC', 'CA', 'BC'])).to eq('A')
    expect(cup_swapping(['BC', 'CB', 'CA', 'BA'])).to eq('A')
    expect(cup_swapping(['BC'])).to eq('C')
    expect(cup_swapping(['BA', 'CA', 'CB', 'CA'])).to eq('B')
    expect(cup_swapping([])).to eq('B')
  end
end