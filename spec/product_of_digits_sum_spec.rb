require 'rspec'
require './lib/product_of_digits_sum'

RSpec.describe 'Product of Digits of Sum' do
  it 'take one or more numbers, sums them, and muliplies the individial digits until the product is one digit long' do
    expect(sum_dig_prod(8, 16, 89, 3)).to eq(6)
    expect(sum_dig_prod(16, 28)).to eq(6)
    expect(sum_dig_prod(9)).to eq(9)
    expect(sum_dig_prod(26, 497, 62, 841)).to eq(6)
    expect(sum_dig_prod(0)).to eq(0)
    expect(sum_dig_prod(17737, 98723, 2)).to eq(6)
    expect(sum_dig_prod(123, -99)).to eq(8)
    expect(sum_dig_prod(9, 8)).to eq(7)
    expect(sum_dig_prod(167, 167, 167, 167, 167, 3)).to eq(8)
    expect(sum_dig_prod(111111111)).to eq(1)
    expect(sum_dig_prod(98526, 54, 863, 156489, 45, 6156)).to eq(2)
    expect(sum_dig_prod(999, 999)).to eq(8)
    expect(sum_dig_prod(1, 2, 3, 4, 5, 6)).to eq(2)
    expect(sum_dig_prod(999, 2222)).to eq(2)
    expect(sum_dig_prod(8618, -2)).to eq(6)
  end
end