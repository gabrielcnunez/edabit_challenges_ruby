require 'rspec'
require './lib/the_hangman_game'

RSpec.describe 'The Hangman Game' do
  it 'given phrase and letters guessed, returns string of hyphens and correctly guessed letters' do
    expect(hangman("Looney Tunes", ["a", "e", "i", "o", "u"])).to eq("-oo-e- -u-e-")
    expect(hangman("summer", ["f", "l", "i"])).to eq("------")
    expect(hangman("Connect-4", ["c", "e", "e"])).to eq("C---ec--4")
    expect(hangman("thE elePhaNt IN the rOom.", ["o", "g", "g", "m", "h","n","p"])).to eq("-h- ---Ph-N- -N -h- -Oom.")
    expect(hangman("deoxyribonucleic acid", [])).to eq("---------------- ----")
    expect(hangman("IM YELLING!", ["m", "y", "i", "l", "g"])).to eq("IM Y-LLI-G!")
    expect(hangman("Show me the money", ["a", "f", "u", "r", "q"])).to eq("---- -- --- -----")
    expect(hangman("peter pan", ["e", "r", "p", "n", "n", "a", "t"])).to eq("peter pan")
  end
end