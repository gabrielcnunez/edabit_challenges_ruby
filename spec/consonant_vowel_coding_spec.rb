require 'rspec'
require './lib/consonant_vowel_coding'

RSpec.describe 'Consonant-Vowel Coding' do
  it 'takes sentence, returns running array of consonants, vowels per word' do
    expect(string_code("I'd like to drink my first glass of champagne.")).to eq(['1 2 1 4 2 4 4 1 6', '1 2 1 1 0 1 1 1 3'])
    expect(string_code("The first man to walk on the moon was Neil Armstrong.")).to eq([ '2 4 2 1 3 1 2 2 2 2 7', '1 1 1 1 1 1 1 2 1 2 2'])
    expect(string_code("I've got a lovely bunch of coconuts.")).to eq([ '1 2 0 4 4 1 5', '2 1 1 2 1 1 3' ])
    expect(string_code("There they are a'standing in a row.")).to eq([ '3 3 1 6 1 0 2', '2 1 2 3 1 1 1' ])
    expect(string_code("Let them eat cake.")).to eq([ '2 3 1 2', '1 1 2 2' ])
    expect(string_code("It does not matter how slowly you go as long as you do not stop.")).to eq([ '1 2 2 4 2 5 1 1 1 3 1 1 1 2 3', '1 2 1 2 1 1 2 1 1 1 1 2 1 1 1'])
    expect(string_code("To be or not to be, that is the question.")).to eq([ '1 1 1 2 1 1 3 1 2 4', '1 1 1 1 1 1 1 1 1 4' ])
    expect(string_code("Believe you can and you're halfway there.")).to eq([ '3 1 2 2 2 5 3', '4 2 1 1 3 2 2' ])
  end
end