require 'rspec'
require './lib/break_point'

RSpec.describe 'Break point' do
  it 'returns boolean whether an integer can have one side of digits summed to
  equal the other side of digits (e.g. 35190, 3+5+1 = 9+0)' do
    expect(break_point(159780)).to eq(true)
    expect(break_point(112)).to eq(true)
    expect(break_point(10)).to eq(false)
    expect(break_point(1034)).to eq(true)
    expect(break_point(343)).to eq(false)
    expect(break_point(1119444)).to eq(true)
    expect(break_point(6666)).to eq(true)
    expect(break_point(9777771)).to eq(false)
  end
end