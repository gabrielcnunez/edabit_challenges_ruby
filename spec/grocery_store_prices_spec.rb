require 'rspec'
require './lib/grocery_store_prices'

RSpec.describe 'Grocery Store Prices' do
  it 'takes array of grocery items and prices as strings, returns array of prices as floats' do
    expect(get_prices(['ice cream ($5.99)', 'banana ($0.20)', 'sandwich ($8.50)', 'soup ($1.99)'])).to eq([5.99, 0.2, 8.50, 1.99])
    expect(get_prices(['salad ($4.99)'])).to eq([4.99])
    expect(get_prices(['artichokes ($1.99)', 'rotiserrie chicken ($5.99)', 'gum ($0.75)'])).to eq([1.99, 5.99, 0.75])
    expect(get_prices(['pizza ($2.99)', 'shampoo ($15.75)', 'trash bags ($15.00)'])).to eq([2.99, 15.75, 15])
  end
end