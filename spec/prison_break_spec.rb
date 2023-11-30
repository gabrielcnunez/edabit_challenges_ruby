require 'rspec'
require './lib/prison_break'

RSpec.describe 'Prison Break' do
  it 'given array of unlocked and locked prison cells, returns number of freed prisoners' do
    expect(freed_prisoners([1, 1, 0, 0, 0, 1, 0])).to eq(4)
    expect(freed_prisoners([1, 0, 0, 0, 0, 0, 0])).to eq(2) 
    expect(freed_prisoners([1, 1, 1, 0, 0, 0])).to eq(2)
    expect(freed_prisoners([1, 0, 1, 0, 1, 0])).to eq(6)
    expect(freed_prisoners([1, 1, 1])).to eq(1)
    expect(freed_prisoners([0, 0, 0])).to eq(0)
    expect(freed_prisoners([0, 1, 1, 1])).to eq(0)
  end
end