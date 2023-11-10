require 'rspec'
require './lib/find_the_discount'

RSpec.describe 'Find the Discount' do
  it 'takes two arguments, price and discount, returns final price after discount' do
    expect(dis(100, 75)).to eq(25)
    expect(dis(211, 50)).to eq(105.5)
    expect(dis(593, 61)).to eq(231.27)
    expect(dis(1693, 80)).to eq(338.6)
    expect(dis(700, 10)).to eq(630)
  end
end