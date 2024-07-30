require 'rspec'
require './lib/dice_gambling'

RSpec.describe 'Dice Gambling' do
  it 'takes array of dice rolls, returns sum with some special conditions' do
    expect(rolls([1,2,3])).to eq(4)
    expect(rolls([2,6,2,5])).to eq(17)
    expect(rolls([6,1,1])).to eq(8)
    expect(rolls([5,1,6,1,6])).to eq(8)
    expect(rolls([1,1,1])).to eq(1)
    expect(rolls([1,1,3,1,1])).to eq(2)
    expect(rolls([1,1,1,1,1])).to eq(1)
    expect(rolls([6,6,6])).to eq(30)
  end
end