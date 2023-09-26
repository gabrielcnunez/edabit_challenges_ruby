require 'rspec'
require './lib/broken_keyboard'

RSpec.describe 'Broken Keyboard' do
  it 'compares two strings, returns letters in second string that are different' do
    expect(find_broken_keys("happy birthday", "hawwy birthday")).to eq(["p"])
    expect(find_broken_keys("starry night", "starrq light")).to eq(["y", "n"])
    expect(find_broken_keys("beethoven", "affthoif5")).to eq(["b", "e", "v", "n"])
    expect(find_broken_keys("mozart", "aiwgvx")).to eq(["m", "o", "z", "a", "r", "t"])
    expect(find_broken_keys("5678", "4678")).to eq(["5"])
    expect(find_broken_keys("!!??$$", "$$!!??")).to eq(["!", "?", "$"])
  end
end