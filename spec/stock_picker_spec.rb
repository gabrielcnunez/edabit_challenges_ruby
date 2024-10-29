require 'rspec'
require './lib/stock_picker'

RSpec.describe 'Stock Picker' do
  it 'takes array of integers, returns max profit that could be made' do
    expect(stock_picker([90, 100, 111, 0, 1, 2, 3])).to eq(21)
    expect(stock_picker([1, 2, 4, 10, 100, 2, 3])).to eq(99)
    expect(stock_picker([10, 1000, 1, 1, 1, 2000, 3])).to eq(1999)
    expect(stock_picker([7, 1, 5, 5, 2, 1, 3])).to eq(4)
    expect(stock_picker([100, 10, 8, 5])).to eq(-1)
  end
end