require 'rspec'
require './lib/roundabout'

RSpec.describe 'Roundabout' do
  it 'takes number of exits and degrees within roundabout, returns exit number' do
    expect(roundabout(4, 50)).to eq("Exit 1")
    expect(roundabout(3, 180)).to eq("Exit 2")
    expect(roundabout(6, 360)).to eq("Exit 1")
    expect(roundabout(3, 100)).to eq("Exit 2")
    expect(roundabout(5, 100)).to eq("Exit 2")
    expect(roundabout(4, 320)).to eq("Exit 0")
    expect(roundabout(2, 180)).to eq("Exit 0")
    expect(roundabout(6, 250)).to eq("Exit 5")
    expect(roundabout(4, 61)).to eq("Exit 2")
    expect(roundabout(3, 0)).to eq("Exit 1")
    expect(roundabout(4, 500)).to eq("Exit 2")
    expect(roundabout(3, 68)).to eq("Exit 1")
    expect(roundabout(5, 40)).to eq("Exit 1")
    expect(roundabout(6, 60)).to eq("Exit 2")
  end
end