require 'rspec'
require './lib/change_every_letter'

RSpec.describe 'change_letter' do
  it 'changes every letter of a word to the next letter in the alphabet' do
    expect(change_letter("hello")).to eq("ifmmp")
    expect(change_letter("lol")).to eq("mpm")
    expect(change_letter("bye")).to eq("czf")
  end
end