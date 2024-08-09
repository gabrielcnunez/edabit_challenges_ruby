require 'rspec'
require './lib/count_the_lone_ones'

RSpec.describe 'Count the Lone Ones' do
  it 'takes pos int, returns no. of 1s that never appear twice or more in a row' do
    expect(count_lone_ones(101)).to eq(2)
    expect(count_lone_ones(1191)).to eq(1)
    expect(count_lone_ones(1111)).to eq(0)
    expect(count_lone_ones(11101)).to eq(1)
    expect(count_lone_ones(462)).to eq(0)
    expect(count_lone_ones(12131415161718191)).to eq(9)
    expect(count_lone_ones(11231212111)).to eq(2)
    expect(count_lone_ones(1)).to eq(1)
    expect(count_lone_ones(0)).to eq(0)
  end
end