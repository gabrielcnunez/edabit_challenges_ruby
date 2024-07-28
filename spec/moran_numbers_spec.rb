require 'rspec'
require './lib/moran_numbers'

RSpec.describe 'Moran Numbers' do
  it 'takes number, return whether it is Hashard, Moran, or neither' do
    expect(moran(132)).to eq("H")
    expect(moran(133)).to eq("M")
    expect(moran(134)).to eq("Neither")
    expect(moran(3033)).to eq("M")
    expect(moran(3030)).to eq("H")
    expect(moran(491423)).to eq("Neither")
    expect(moran(20937)).to eq("M")
  end
end