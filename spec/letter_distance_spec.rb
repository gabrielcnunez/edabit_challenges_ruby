require 'rspec'
require './lib/letter_distance'

RSpec.describe 'Letter Distance' do
  it 'given two words, calculates the absolute value of difference in character codes and sums those differences' do
    expect(letter_distance('house', 'fly')).to eq(11)
    expect(letter_distance('sharp', 'sharq')).to eq(1)
    expect(letter_distance('abcde', 'bcdef')).to eq(5)
    expect(letter_distance('abcde', 'a')).to eq(4)
    expect(letter_distance('abcde', 'e')).to eq(8)
    expect(letter_distance('abcde', 'Abcde')).to eq(32)
    expect(letter_distance('abcde', 'A')).to eq(36)
    expect(letter_distance('very', 'fragile')).to eq(67)
  end
end