require 'rspec'
require './lib/position_in_alphabet'

RSpec.describe 'Position in the Alphabet' do
  it 'returns the corresponding letter in the alphabet for given valid integer' do
    expect(letter_at_position(1)).to eq("a")
    expect(letter_at_position(2)).to eq("b")
    expect(letter_at_position(3)).to eq("c")
    expect(letter_at_position(4)).to eq("d")
    expect(letter_at_position(5)).to eq("e")
    expect(letter_at_position(6)).to eq("f")
    expect(letter_at_position(7)).to eq("g")
    expect(letter_at_position(8)).to eq("h")
    expect(letter_at_position(9)).to eq("i")
    expect(letter_at_position(10)).to eq("j")
    expect(letter_at_position(11)).to eq("k")
    expect(letter_at_position(12)).to eq("l")
    expect(letter_at_position(13)).to eq("m")
    expect(letter_at_position(14)).to eq("n")
    expect(letter_at_position(15)).to eq("o")
    expect(letter_at_position(16)).to eq("p")
    expect(letter_at_position(17)).to eq("q")
    expect(letter_at_position(18)).to eq("r")
    expect(letter_at_position(19)).to eq("s")
    expect(letter_at_position(20)).to eq("t")
    expect(letter_at_position(21)).to eq("u")
    expect(letter_at_position(22)).to eq("v")
    expect(letter_at_position(23)).to eq("w")
    expect(letter_at_position(24)).to eq("x")
    expect(letter_at_position(25)).to eq("y")
    expect(letter_at_position(26)).to eq("z")
    expect(letter_at_position(0)).to eq("invalid")
    expect(letter_at_position(4.5)).to eq("invalid")
    expect(letter_at_position(4.0)).to eq("d")
    expect(letter_at_position(1.0)).to eq("a")
    expect(letter_at_position(26.0)).to eq("z")
  end
end