require 'rspec'
require './lib/pin_validation'

RSpec.describe 'ATM PIN code validation' do
  it 'validates whether a given string a valid 4-digit code' do
    expect(is_valid_PIN("1234")).to eq(true)
    expect(is_valid_PIN("12345")).to eq(false)
    expect(is_valid_PIN("a234")).to eq(false)
    expect(is_valid_PIN("")).to eq(false)
    expect(is_valid_PIN("%234")).to eq(false)
    expect(is_valid_PIN("`234")).to eq(false)
    expect(is_valid_PIN("@234")).to eq(false)
    expect(is_valid_PIN("#234")).to eq(false)
    expect(is_valid_PIN("$234")).to eq(false)
    expect(is_valid_PIN("*234")).to eq(false)
    expect(is_valid_PIN("5678")).to eq(true)
    expect(is_valid_PIN("^234")).to eq(false)
    expect(is_valid_PIN("(234")).to eq(false)
    expect(is_valid_PIN(")234")).to eq(false)
    expect(is_valid_PIN("123456")).to eq(true)
    expect(is_valid_PIN("-234")).to eq(false)
    expect(is_valid_PIN("_234")).to eq(false)
    expect(is_valid_PIN("+234")).to eq(false)
    expect(is_valid_PIN("=234")).to eq(false)
    expect(is_valid_PIN("?234")).to eq(false)
  end
end