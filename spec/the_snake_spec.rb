require 'rspec'
require './lib/the_snake'

RSpec.describe 'The Snake -- Area Filling' do
  it 'takes size n of game screen, return number of time snake can eat before it run out of space' do
    expect(snakefill(8)).to eq(6)
    expect(snakefill(18)).to eq(8)
    expect(snakefill(555)).to eq(18)
    expect(snakefill(2)).to eq(2)
    expect(snakefill(1)).to eq(0)
    expect(snakefill(900)).to eq(19)
  end
end