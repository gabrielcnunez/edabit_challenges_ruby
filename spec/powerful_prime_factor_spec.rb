require 'rspec'
require './lib/powerful_prime_factor'

RSpec.describe 'Powerful Prime Factor' do
  it 'takes int).to eq(returns string expressing how number is made by multiplying prime factors' do
    expect(express_factors(2)).to eq("2")
    expect(express_factors(4)).to eq("2^2")
    expect(express_factors(10)).to eq("2 x 5")
    expect(express_factors(11)).to eq("11")
    expect(express_factors(29)).to eq("29")
    expect(express_factors(60)).to eq("2^2 x 3 x 5")
    expect(express_factors(100)).to eq("2^2 x 5^2")
    expect(express_factors(151)).to eq("151")
    expect(express_factors(323)).to eq("17 x 19")
    expect(express_factors(997)).to eq("997")
    expect(express_factors(3349)).to eq("17 x 197")
    expect(express_factors(5040)).to eq("2^4 x 3^2 x 5 x 7")
    expect(express_factors(6097)).to eq("7 x 13 x 67")
    expect(express_factors(8192)).to eq("2^13")
    expect(express_factors(9870)).to eq("2 x 3 x 5 x 7 x 47")
    expect(express_factors(9973)).to eq("9973")
    expect(express_factors(9999)).to eq("3^2 x 11 x 101")
  end
end