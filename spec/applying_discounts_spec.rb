require 'rspec'
require './lib/applying_discounts'

RSpec.describe 'Applying discounts' do
  it 'applies a discount to every number in an array' do
    expect(get_discounts([2, 4, 6, 11], "50%")).to eq([1, 2, 3, 5.5])
    expect(get_discounts([10, 20, 40, 80], "75%")).to eq([7.5, 15, 30, 60])
    expect(get_discounts([100], "45%")).to eq([45])
  end
end