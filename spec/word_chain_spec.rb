require 'rspec'
require './lib/word_chain'

RSpec.describe 'Word Chain' do
  it 'takes array of words, return bool if each successive word has only letter changed from previous' do
    expect(is_word_chain(['meal', 'seal', 'seat', 'beat', 'beet'])).to eq(true)
    expect(is_word_chain(['red', 'bed', 'bet', 'bat', 'sat'])).to eq(true)
    expect(is_word_chain(['heady', 'ready', 'beady', 'beads', 'meads', 'meats', 'seats', 'feats'])).to eq(true)
    expect(is_word_chain(['score', 'scare', 'stare', 'spare', 'spire'])).to eq(true)
    expect(is_word_chain(['more', 'mire', 'dire', 'dare', 'date'])).to eq(true)
    expect(is_word_chain(['read', 'red', 'led', 'lad', 'lady'])).to eq(false)
    expect(is_word_chain(['red', 'bat', 'cat', 'sat'])).to eq(false)
    expect(is_word_chain(['candy', 'candies', 'fat', 'rat'])).to eq(false)
  end
end