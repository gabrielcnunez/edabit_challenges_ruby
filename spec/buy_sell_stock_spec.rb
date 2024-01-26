require 'rspec'
require './lib/buy_sell_stock'

RSpec.describe 'Best Time to Buy and Sell Stock' do
  it 'given array of stock prices, return max profit if possible' do
    expect(max_profit([7,1,5,3,6,4])).to eq(5)
    expect(max_profit([7,6,4,3,1])).to eq(0)
  end
end