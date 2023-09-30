require 'rspec'
require './lib/coin_cooperation'

RSpec.describe 'Coin Co-operation' do
  it 'given two arrays of strings, calculate coin totals' do
    expect(get_coin_balances(['share'], ['share'])).to eq([5, 5])
    expect(get_coin_balances(['steal'], ['share'])).to eq([6, 2])
    expect(get_coin_balances(['share'], ['steal'])).to eq([2, 6])
    expect(get_coin_balances(['steal'], ['steal'])).to eq([3, 3])
    expect(get_coin_balances(['share', 'share', 'share'], ['steal', 'share', 'steal'])).to eq([3, 11])
    expect(get_coin_balances(['share', 'share', 'steal', 'share'], ['steal', 'steal', 'steal', 'steal'])).to eq([0, 12])
    expect(get_coin_balances(['steal', 'steal', 'steal'], ['share', 'share', 'share'])).to eq([12, 0])
    expect(get_coin_balances(['share', 'share'], ['share', 'share'])).to eq([7, 7])
    expect(get_coin_balances(['share', 'steal', 'steal', 'steal'], ['share', 'share', 'steal', 'share'])).to eq([11, 3])
    expect(get_coin_balances(['share', 'share', 'steal', 'share'], ['steal', 'share', 'steal', 'steal'])).to eq([3, 11])
    expect(get_coin_balances(['steal', 'steal', 'steal', 'steal'], ['steal', 'steal', 'steal', 'steal'])).to eq([3, 3])
    expect(get_coin_balances(['steal', 'share', 'steal', 'steal'], ['share', 'share', 'steal', 'steal'])).to eq([8, 4])
    expect(get_coin_balances(['steal', 'steal'], ['share', 'share'])).to eq([9, 1])
    expect(get_coin_balances(['steal', 'share'], ['share', 'steal'])).to eq([5, 5])
  end
end