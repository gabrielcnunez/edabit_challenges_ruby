require 'rspec'
require './lib/muddled_middles'

RSpec.describe 'Muddled Middles' do
  it 'given string sentence, reverse all letters in each word expect first and last letters' do
    expect(mix_middle("the quick brown fox jumps high")).to eq("the qciuk bworn fox jpmus hgih")
    expect(mix_middle("this sentence is quite muddled")).to eq("tihs scnetnee is qtiue melddud")
    expect(mix_middle("buying a first-class ticket")).to eq("bniyug a fsalc-tsris tekcit")
    expect(mix_middle("hello world")).to eq("hlleo wlrod")
    expect(mix_middle("is it a cat or a dog")).to eq("is it a cat or a dog")
  end
end