require 'rspec'
require './lib/digital_vowel_ban'

RSpec.describe 'digital vowel ban' do
  it 'delete digits from an integer that contain a banned vowel in their written version' do
    expect(digital_vowel_ban(143, "o")).to eq(3)
    expect(digital_vowel_ban(14266330, "e")).to eq(4266)
    expect(digital_vowel_ban(4020, "u")).to eq(20)
    expect(digital_vowel_ban(586, "i")).to eq('Banned Number')
    expect(digital_vowel_ban(123456789, "i")).to eq(12347)
    expect(digital_vowel_ban(20442, "o")).to eq('Banned Number')
    expect(digital_vowel_ban(1100, "u")).to eq(1100)
    expect(digital_vowel_ban(1993, "e")).to eq('Banned Number')
    expect(digital_vowel_ban(90160350102, "e")).to eq(62)
    expect(digital_vowel_ban(79284426, "o")).to eq(7986)
    expect(digital_vowel_ban(123456789, "a")).to eq(123456789)
  end
end