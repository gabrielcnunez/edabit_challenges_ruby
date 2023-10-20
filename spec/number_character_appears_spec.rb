require 'rspec'
require 'number_character_appears'

RSpec.describe 'Number of Times a Character Appears' do
  it 'return number of times a character appears in each word' do
    expect(char_appears("She sells sea shells by the seashore.", "s")).to eq([1, 2, 1, 2, 0, 0, 2])
    expect(char_appears("Peter Piper picked a peck of pickled peppers.", "p")).to eq([1, 2, 1, 0, 1, 0, 1, 3])
    expect(char_appears("She hiked in the morning, then swam in the river.", "t")).to eq([0, 0, 0, 1, 0, 1, 0, 0, 1, 0])
    expect(char_appears("I scream, you scream, we all scream for ice cream.", "f")).to eq([0, 0, 0, 0, 0, 0, 0, 1, 0, 0])
    expect(char_appears("Snap, crackle, pop!", "p")).to eq([1, 0, 2])
    expect(char_appears("What a wonderful world.", "w")).to eq([1, 0, 1, 1])
  end
end