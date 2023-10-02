require 'rspec'
require './lib/simplified_josephus'

RSpec.describe 'Simplified Josephus' do
  it 'given n number of people, find number of person who survives' do
    expect(josephus(1)).to eq(1)
    expect(josephus(41)).to eq(19)
    expect(josephus(8)).to eq(1)
    expect(josephus(5)).to eq(3)
    expect(josephus(7)).to eq(7)
  end
end