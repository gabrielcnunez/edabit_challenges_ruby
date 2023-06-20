require 'rspec'
require './lib/binary_converter'

RSpec.describe 'binary_coverter' do
  it 'converts binary code into an integer' do
    expect(binary_to_decimal([1, 1, 1, 1, 1, 1, 1, 1])).to eq(255)
    expect(binary_to_decimal([0, 0, 0, 0, 0, 0, 0, 0])).to eq(0)
    expect(binary_to_decimal([1, 0, 1, 1, 1, 1, 0, 0])).to eq(188)
    expect(binary_to_decimal([1, 0, 1, 1, 0, 1, 0, 1])).to eq(181)
  end
end