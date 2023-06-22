require 'rspec'
require './lib/abbreviations_unique'

RSpec.describe 'unique_abbrev' do
  it 'returns boolean if every abbreviation uniquely identifies each word' do
    expect(unique_abbrev(["s", "t", "v"], ["stamina", "television", "vindaloo"])).to eq(true)
    expect(unique_abbrev(["mo", "ma", "me"], ["moment", "many", "mean"])).to eq(true)
    expect(unique_abbrev(["at", "o", "abe"], ["atom", "original", "abet"])).to eq(true)
    expect(unique_abbrev(["rh", "par", "re"], ["rhino", "parry", "residue"])).to eq(true)
    expect(unique_abbrev(["ho", "h", "ha"], ["house", "hope", "happy"])).to eq(false)
    expect(unique_abbrev(["bi", "ba", "bat"], ["big", "bard", "battery"])).to eq(false)
    expect(unique_abbrev(["b", "c", "ch"], ["broth", "chap", "cardigan"])).to eq(false)
    expect(unique_abbrev(["to", "too", "t"], ["topology", "took", "torrent"])).to eq(false)
  end
end