require 'rspec'
require './lib/scrabble_scores_part2'

RSpec.describe 'Scrabble Scores (Part 2)' do
  it 'given a scrabble row and word, return index where first letter should go for most points' do
    expect(best_start(['-','DW','-','-','-','TL','-','-','-','TL','-','-','-','DW','-'], 'quiz')).to eq(0)
    expect(best_start(['-','DW','-','-','-','TL','-','-','-','TL','-','-','-','DW','-'], 'quit')).to eq(5)
    expect(best_start(['-','DW','-','-','-','TL','-','-','-','TL','-','-','-','DW','-'], 'quart')).to eq(9)
    expect(best_start(['-','DW','-','-','-','TL','-','-','-','TL','-','-','-','DW','-'], 'quartz')).to eq(0)
  end
end