require 'rspec'
require './lib/standard_competition_ranking'

RSpec.describe 'Standard Competition Ranking' do
  it 'given hash containing names and scores, return rank of a certain name' do
    expect(competition_rank({'Aria' => 90, 'Brooke' => 90, 'Olivia' => 90, 'Eve' => 74, 'Ellie' => 87}, "Ellie")).to eq(4)
    expect(competition_rank({'Ryan' => 97, 'Thomas' => 85, 'Kai' => 95, 'Aiden' => 87, 'Logan' => 90}, "Logan")).to eq(3)
    expect(competition_rank({'Lilly' => 91, 'Harris' => 87, 'Archie' => 93, 'Lexi' => 100, 'Ava' => 88}, "Lilly")).to eq(3)
    expect(competition_rank({'Jayden' => 90, 'Josh' => 90, 'Rebecca' => 96, 'Jack' => 89, 'Max' => 96}, "Rebecca")).to eq(1)
    expect(competition_rank({'Ben' => 78, 'Quinn' => 84, 'Lena' => 84, 'Isla' => 92, 'Kayla' => 72}, "Ben")).to eq(4)
    expect(competition_rank({'Lucy' => 81, 'Ella' => 90, 'Summer' => 91, 'Harper' => 81, 'Sadie' => 85}, "Ella")).to eq(2)
    expect(competition_rank({'Cole' => 96, 'Carson' => 92, 'Gabriel' => 91, 'Hollie' => 97, 'Penelope' => 85}, "Hollie")).to eq(1)
    expect(competition_rank({'Michael' => 89, 'Noah' => 98, 'Reuben' => 88, 'Sam' => 91, 'Mia' => 91}, "Mia")).to eq(2)
    expect(competition_rank({'James' => 93, 'Maria' => 91, 'Lewis' => 95, 'Joseph' => 96, 'Imogen' => 90}, "Lewis")).to eq(2)
    expect(competition_rank({'Jessica' => 90, 'Emily' => 99, 'Hope' => 91, 'Charlie' => 96, 'Lucas' => 87}, "Hope")).to eq(3)
    expect(competition_rank({'Sophie' => 86, 'Piper' => 98, 'Elliot' => 100, 'Erica' => 90, 'Freya' => 100}, "Freya")).to eq(1)
    expect(competition_rank({'Grace' => 93, 'Henry' => 90, 'Florence' => 98, 'Millie' => 89, 'David' => 99}, "Henry")).to eq(4)
    expect(competition_rank({'Alfie' => 90, 'Elijah' => 90, 'Cara' => 85, 'Isaac' => 96, 'Bella' => 92}, "Elijah")).to eq(3)
    expect(competition_rank({'Clara' => 85, 'Matilda' => 86, 'Amelia' => 98, 'Oliver' => 95, 'Adam' => 94}, "Clara")).to eq(5)
    expect(competition_rank({'Nina' => 81, 'Tommy' => 79, 'Tyler' => 84, 'Leo' => 79, 'Hallie' => 79}, "Nina")).to eq(2)
  end
end