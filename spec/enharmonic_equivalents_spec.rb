require 'rspec'
require './lib/enharmonic_equivalents'

RSpec.describe 'get_equivalent' do
  it 'returns the enharmonic equivalent of a given note' do
    expect(get_equivalent("C#")).to eq("Db")
    expect(get_equivalent("Db")).to eq("C#")
    expect(get_equivalent("D#")).to eq("Eb")
    expect(get_equivalent("Eb")).to eq("D#")
    expect(get_equivalent("F#")).to eq("Gb")
    expect(get_equivalent("Gb")).to eq("F#")
    expect(get_equivalent("G#")).to eq("Ab")
    expect(get_equivalent("Ab")).to eq("G#")
    expect(get_equivalent("A#")).to eq("Bb")
    expect(get_equivalent("Bb")).to eq("A#")
  end
end