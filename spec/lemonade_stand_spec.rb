require 'rspec'
require './lib/lemonade_stand'

RSpec.describe 'Lemonade Stand' do
  it 'returns bool if customers can be provided correct change' do
    expect(lemonade([5, 5, 5, 10, 20])).to eq(true)
    expect(lemonade([5, 5, 10])).to eq(true)
    expect(lemonade([10, 10])).to eq(false)
    expect(lemonade([5, 5, 10, 10, 20])).to eq(false)
    expect(lemonade([5, 5, 5, 5, 10, 5, 10, 10, 10, 20])).to eq(true)
    expect(lemonade([5, 10, 5, 5, 5, 20, 5, 10, 5, 5, 10, 20])).to eq(true)
    expect(lemonade([5, 10, 5, 5, 5, 20, 5, 10, 20, 5, 10, 20, 10])).to eq(false)
  end
end