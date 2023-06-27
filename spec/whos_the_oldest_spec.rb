require 'rspec'
require './lib/whos_the_oldest'

RSpec.describe 'whos the oldest' do
  it 'should take a hash of names and ages, and return the oldest by name' do
    expect(oldest({'Charlotte' => 53, 'Oliver' => 15, 'Henry' => 18, 'Gabriel' => 46, 'Violet' => 13})).to eq("Charlotte")
    expect(oldest({'Grayson' => 50, 'Imogen' => 63, 'Logan' => 21, 'Daniel' => 64, 'Rory' => 19})).to eq("Daniel")
    expect(oldest({'Josh' => 78, 'Adam' => 63, 'Aria' => 65, 'Grace' => 51, 'Bella' => 37})).to eq("Josh")
    expect(oldest({'Alex' => 9, 'Jayden' => 18, 'Julia' => 43, 'Penelope' => 32, 'Ella' => 34})).to eq("Julia")
    expect(oldest({'Sam' => 65, 'Joseph' => 60, 'Mia' => 41, 'Thomas' => 31, 'Rebecca' => 5})).to eq("Sam")
    expect(oldest({'Eden' => 64, 'Archie' => 18, 'Olivia' => 32, 'Kai' => 84, 'Harry' => 14})).to eq("Kai")
    expect(oldest({'Anna' => 67, 'Elijah' => 10, 'Cole' => 31, 'Andrew' => 24, 'Elliot' => 77})).to eq("Elliot")
    expect(oldest({'Innes' => 77, 'Lilly' => 11, 'Hallie' => 41, 'Nina' => 66, 'Ryan' => 9})).to eq("Innes")
    expect(oldest({'Isla' => 73, 'Elsie' => 6, 'Frankie' => 36, 'Robbie' => 75, 'Kayla' => 9})).to eq("Robbie")
    expect(oldest({'Jack' => 64, 'Jacob' => 33, 'Tommy' => 17, 'Finn' => 5, 'Isaac' => 13})).to eq("Jack")
    expect(oldest({'Carson' => 81, 'Charlie' => 33, 'Riley' => 28, 'Maria' => 39, 'Sadie' => 67})).to eq("Carson")
    expect(oldest({'Amy' => 70, 'Owen' => 11, 'Matilda' => 64, 'Lexi' => 37, 'Lena' => 26})).to eq("Amy")
    expect(oldest({'Lola' => 45, 'Tyler' => 23, 'Hope' => 4, 'Phoebe' => 86, 'Freya' => 44})).to eq("Phoebe")
    expect(oldest({'Hollie' => 48, 'Harris' => 24, 'Ava' => 72, 'Alfie' => 9, 'Louis' => 47})).to eq("Ava")
    expect(oldest({'Erica' => 32, 'Eve' => 82, 'Harper' => 74, 'Summer' => 38, 'Ben' => 72})).to eq("Eve")
  end
end