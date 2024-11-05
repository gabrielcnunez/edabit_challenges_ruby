require 'rspec'
require './lib/increasing_word_weights'

RSpec.describe 'Increasing Word Weights' do
  it 'takes string sentence, returns boolean if word weight increases' do
    expect(increasing_word_weights("Why not try?")).to eq(true)
    expect(increasing_word_weights("Face your fears, never settle.")).to eq(true)
    expect(increasing_word_weights("DON'T SHOUT!")).to eq(true)
    expect(increasing_word_weights("Can you just leave?")).to eq(true)
    expect(increasing_word_weights("You will push ahead, creating solutions!")).to eq(true)
    expect(increasing_word_weights("All that money doesn't guarantee happiness.")).to eq(true)
    expect(increasing_word_weights("Full steam ahead!")).to eq(false)
    expect(increasing_word_weights("Not all those who wander are lost.")).to eq(false)
    expect(increasing_word_weights("All other roads.")).to eq(false)
    expect(increasing_word_weights("Whatever you are, be a good one.")).to eq(false)
    expect(increasing_word_weights("Standing on the shoulders of giants.")).to eq(false)
    expect(increasing_word_weights("You get what you settle for.")).to eq(false)
    expect(increasing_word_weights("Inconceivable!")).to eq(true)
  end
end