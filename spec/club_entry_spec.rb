require 'rspec'
require './lib/club_entry'

RSpec.describe 'Club Entry' do
  it 'takes a word and returns an integer (password) based on the double letters in the word' do
    expect(club_entry("lettuce")).to eq(80)
    expect(club_entry("hill")).to eq(48)
    expect(club_entry("apple")).to eq(64)
    expect(club_entry("addiction")).to eq(16)
    expect(club_entry("bee")).to eq(20)
    expect(club_entry("zz")).to eq(104)
    expect(club_entry("mubashirr")).to eq(72)
  end
end