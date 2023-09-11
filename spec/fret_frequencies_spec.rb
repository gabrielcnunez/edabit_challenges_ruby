require 'rspec'
require './lib/fret_frequencies'

RSpec.describe 'Fret Frequencies on the Guitar' do
  it 'takes guitar string and fret numbers, returns frequency rounded to nearest 100th' do
    expect(fret_freq(3, 21)).to eq(659.26)
    expect(fret_freq(3, 15)).to eq(466.17)
    expect(fret_freq(6, 17)).to eq(220.01)
    expect(fret_freq(5, 12)).to eq(220)
    expect(fret_freq(2, 5)).to eq(329.63)
    expect(fret_freq(3, 9)).to eq(329.63)
    expect(fret_freq(1, 16)).to eq(830.62)
    expect(fret_freq(1, 4)).to eq(415.31)
    expect(fret_freq(3, 16)).to eq(493.89)
    expect(fret_freq(4, 6)).to eq(207.65)
    expect(fret_freq(2, 13)).to eq(523.25)
    expect(fret_freq(6, 12)).to eq(164.82)
    expect(fret_freq(5, 16)).to eq(277.18)
    expect(fret_freq(5, 19)).to eq(329.63)
    expect(fret_freq(4, 0)).to eq(146.83)
    expect(fret_freq(2, 6)).to eq(349.23)
    expect(fret_freq(3, 9)).to eq(329.63)
    expect(fret_freq(3, 5)).to eq(261.63)
    expect(fret_freq(5, 18)).to eq(311.13)
    expect(fret_freq(2, 23)).to eq(932.32)
    expect(fret_freq(2, 16)).to eq(622.25)
    expect(fret_freq(4, 6)).to eq(207.65)
    expect(fret_freq(4, 9)).to eq(246.94)
    expect(fret_freq(5, 8)).to eq(174.61)
    expect(fret_freq(3, 1)).to eq(207.65)
    expect(fret_freq(5, 17)).to eq(293.66)
    expect(fret_freq(6, 18)).to eq(233.09)
    expect(fret_freq(3, 23)).to eq(740)
    expect(fret_freq(6, 14)).to eq(185)
    expect(fret_freq(1, 2)).to eq(370)
  end
end