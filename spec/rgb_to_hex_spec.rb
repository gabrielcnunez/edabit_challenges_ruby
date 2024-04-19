require 'rspec'
require './lib/rgb_to_hex'

RSpec.describe 'RGB to Hex Color Converter' do
  it 'converts color in RGB format to Hex format' do
    expect(rgb_to_hex("rgb(0, 128, 192)")).to eq("#0080c0")
    expect(rgb_to_hex("rgb(45, 255, 192)")).to eq("#2dffc0")
    expect(rgb_to_hex("rgb(255, 255, 255)")).to eq("#ffffff")
    expect(rgb_to_hex("rgb(192, 192, 192)")).to eq("#c0c0c0")
    expect(rgb_to_hex("rgb(255, 0, 0)")).to eq("#ff0000")
    expect(rgb_to_hex("rgb(0, 0, 255)")).to eq("#0000ff")
    expect(rgb_to_hex("rgb(0, 0, 0)")).to eq("#000000")
  end
end