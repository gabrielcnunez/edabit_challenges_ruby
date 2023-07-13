require 'rspec'
require './lib/east_or_west'

RSpec.describe 'East or west' do
  it 'updates an array of east strings into west string using the same formatting' do
    expect(direction(["east", "EAST", "eastEAST"])).to eq(["west", "WEST", "westWEST"])
    expect(direction(["eAsT EaSt", "EaSt eAsT"])).to eq(["wEsT WeSt", "WeSt wEsT"])
    expect(direction(["east EAST", "e a s t", "E A S T"])).to eq(["west WEST", "w e s t", "W E S T"])
  end
end