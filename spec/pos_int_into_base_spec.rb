require 'rspec'
require './lib/pos_int_into_base'

RSpec.describe 'Positive Integer Into Base 2, 8, and 16' do
  it 'takes integer, converts to given base, and return string using recursion' do
    expect(integer_to_string(10, 2)).to eq("1010")
    expect(integer_to_string(1642, 8)).to eq("3152")
    expect(integer_to_string(102, 2)).to eq("1100110")
    expect(integer_to_string(212, 16)).to eq("d4")
    expect(integer_to_string(18, 2)).to eq("10010")
    expect(integer_to_string(3162, 16)).to eq("c5a")
    expect(integer_to_string(10, 8)).to eq("12")
    expect(integer_to_string(162, 8)).to eq("242")
    expect(integer_to_string(27, 2)).to eq("11011")
    expect(integer_to_string(4321, 16)).to eq("10e1")
    expect(integer_to_string(1622, 16)).to eq("656")
  end
end