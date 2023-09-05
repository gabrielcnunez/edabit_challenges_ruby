require 'rspec'
require './lib/swapping_two_by_two'

RSpec.describe 'Swapping Two by Two' do
  it 'takes string, swaps first pair with second pair for every quadruplet substring' do
    expect(swap_two("ABCDEFGH")).to eq("CDABGHEF")
    expect(swap_two("AABBCCDDEEFF")).to eq("BBAADDCCFFEE")
    expect(swap_two("oompaloompa")).to eq("mpooooalmpa")
    expect(swap_two("munchkins")).to eq("ncmuinhks")
    expect(swap_two("FFGGHHI")).to eq("GGFFHHI")
    expect(swap_two("FFG")).to eq("FFG")
    expect(swap_two("")).to eq("")
  end
end