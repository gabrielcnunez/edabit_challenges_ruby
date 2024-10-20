require 'rspec'
require './lib/swapping_cards'

RSpec.describe 'Swapping Cards' do
  it 'takes two integers (cards for each players), swaps cards, and returns boolean if first player won' do
    expect(swap_cards(41, 98)).to eq(true)
    expect(swap_cards(12, 28)).to eq(true)
    expect(swap_cards(67, 53)).to eq(false)
    expect(swap_cards(77, 54)).to eq(false)
    expect(swap_cards(45, 23)).to eq(false)
    expect(swap_cards(74, 81)).to eq(true)
    expect(swap_cards(75, 35)).to eq(true)
    expect(swap_cards(21, 25)).to eq(true)
    expect(swap_cards(22, 34)).to eq(true)
    expect(swap_cards(24, 12)).to eq(false)
    expect(swap_cards(52, 46)).to eq(true)
    expect(swap_cards(88, 45)).to eq(false)
    expect(swap_cards(48, 54)).to eq(true)
    expect(swap_cards(75, 87)).to eq(true)
    expect(swap_cards(13, 12)).to eq(true)
  end
end