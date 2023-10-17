require 'rspec'
require './lib/scrabble_scores_part1'

RSpec.describe 'Scrabble Scores (Part 1)' do
  it 'takes array of words, returns array of highest scoring word(s)' do
    expect(best_words(['got','test','oh','sat','rents'])).to eq(['oh','rents'])
    expect(best_words(['digest','divest','verge','honey','money'])).to eq(['honey'])
    expect(best_words(['wig','jury','interim','size','hunter'])).to eq(['jury'])
    expect(best_words(['berry','whiz','laughed','ghetto','psychic'])).to eq(['whiz', 'psychic'])
    expect(best_words(['library','index','memory','ghosts','quit'])).to eq(['library','index','memory','quit'])
    expect(best_words(['singing','swine','llamas','crunchy','creamy'])).to eq(['crunchy'])
  end
end