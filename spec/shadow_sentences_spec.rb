require 'rspec'
require './lib/shadow_sentences.rb'

RSpec.describe 'Shadow Sentences' do
  it 'given two sentences, return whether they are "shadows" of each other,
  where word lengths are the same but words do not share any letters' do
    expect(shadow_sentence('they are round', 'fold two times')).to eq(true)
    expect(shadow_sentence('impossible poetry', 'gargantuan cliffs')).to eq(true)
    expect(shadow_sentence('seemingly unlimited', 'cutthroat crossbows')).to eq(true)
    expect(shadow_sentence('empty cookie jar', 'adorn fluffy wig')).to eq(true)
    expect(shadow_sentence('own a boat', 'buy my wine')).to eq(false)
    expect(shadow_sentence('his friends', 'our company')).to eq(false)
    expect(shadow_sentence('a normal sentence', 'a normal sentence')).to eq(false)
    expect(shadow_sentence('salmonella supper', 'birthright')).to eq(false)
  end
end