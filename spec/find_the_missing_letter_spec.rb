require 'rspec'
require './lib/find_the_missing_letter'

RSpec.describe 'Find the Missing Letter' do
  it 'takes array of increasing letters, finds missing letter' do
    expect(missing_letter(["a", "b", "c", "e", "f", "g"])).to eq("d")
    expect(missing_letter(["O", "Q", "R", "S"])).to eq("P")
    expect(missing_letter(["t", "u", "v", "w", "x", "z"])).to eq("y")
    expect(missing_letter(["m", "o"])).to eq("n")
    expect(missing_letter(["a", "b", "c", "d", "e", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])).to eq("i")
    expect(missing_letter(["q", "s", "t"])).to eq("r")
    expect(missing_letter(["c", "d", "e", "f", "g", "h", "i", "k", "l", "m", "n"])).to eq("j")
    expect(missing_letter(["e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p"])).to eq("l")
    expect(missing_letter(["t", "u", "w", "x"])).to eq("v")
    expect(missing_letter(["B", "D"])).to eq("C")
  end
end