require 'rspec'
require './lib/mod_10_algorithm'

RSpec.describe 'Mod 10 Algorithm' do
  it 'takes number, return boolean whether number is valid credit card number using Luhn Algorithm' do
    expect(valid_credit_card(2111111111121111)).to eq(false)
    expect(valid_credit_card(4111111111111111)).to eq(true)
    expect(valid_credit_card(5500000000000004)).to eq(true)
    expect(valid_credit_card(378282246310005)).to eq(true)
    expect(valid_credit_card(7777777777777777)).to eq(false)
    expect(valid_credit_card(6011000000000004)).to eq(true)
    expect(valid_credit_card(6451623895684318)).to eq(false)
  end
end