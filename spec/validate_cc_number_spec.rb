require 'rspec'
require './lib/validate_cc_number'

RSpec.describe 'Validate Credit Card Number' do
  it 'takes number, return boolean if number is valid credit card number' do
    expect(validate_card(79927398714)).to eq(false)
    expect(validate_card(79927398713)).to eq(false)
    expect(validate_card(709092739800713)).to eq(true)
    expect(validate_card(1234567890123456)).to eq(false)
    expect(validate_card(12345678901237)).to eq(true)
    expect(validate_card(4539142454349340183)).to eq(true)
    expect(validate_card(45391424543493400011)).to eq(false)
    expect(validate_card(5496683867445267)).to eq(true)
    expect(validate_card(4508793361140566)).to eq(false)
    expect(validate_card(376785877526048)).to eq(true)
    expect(validate_card(36717601781975)).to eq(false)
  end
end