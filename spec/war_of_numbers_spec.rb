require 'rspec'
require './lib/war_of_numbers'

RSpec.describe 'war of numbers' do
  it 'returns the difference between the sum of even and odd integers' do
    expect(war_of_numbers([5, 9, 45, 6, 2, 7, 34, 8, 6, 90, 5, 243])).to eq(168)
    expect(war_of_numbers([654, 7, 23, 3, 78, 4, 56, 34])).to eq(793)
    expect(war_of_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq(5)
    expect(war_of_numbers([97 ,83, 209, 141, 134, 298, 110, 207, 229, 275, 115, 64, 244, 278])).to eq(228)
    expect(war_of_numbers([332, 92, 35, 315, 109, 168, 320, 230, 63, 323, 16, 204, 105, 17, 226, 157, 245, 44, 223, 136, 93])).to eq(83)
    expect(war_of_numbers([322, 89, 36, 310, 297, 157, 251, 55, 264, 244, 200, 304, 25, 308, 311, 269, 303, 257, 6, 311, 307, 310, 50, 46, 54, 237, 59, 105, 267])).to eq(846)
    expect(war_of_numbers([50, 100, 149, 1, 200, 199, 3, 2])).to eq(0)
  end
end