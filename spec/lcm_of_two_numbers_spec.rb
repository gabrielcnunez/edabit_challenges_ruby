require 'rspec'
require './lib/lcm_of_two_numbers'

RSpec.describe 'LCM of Two Numbers' do
  it 'returns the least common multiple (LCM) of two integers' do
    expect(lcm(9, 18)).to eq(18)
    expect(lcm(8, 5)).to eq(40)
    expect(lcm(17, 11)).to eq(187)
    expect(lcm(17, 5)).to eq(85)
    expect(lcm(3, 12)).to eq(12)
    expect(lcm(9, 9)).to eq(9)
  end
end