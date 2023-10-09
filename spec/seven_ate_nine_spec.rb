require 'rspec'
require './lib/seven_ate_nine'

RSpec.describe 'Seven Ate Nine' do
  it 'takes array, returns final array with leftmost numbers eating smaller numbers to right' do
    expect(nom_nom([1, 2, 3])).to eq([1, 2, 3])
    expect(nom_nom([2, 1, 3])).to eq([3, 3])
    expect(nom_nom([8, 5, 9])).to eq([22])
    expect(nom_nom([5, 3, 7])).to eq([15])
    expect(nom_nom([5, 3, 9])).to eq([8, 9])
    expect(nom_nom([6, 5, 6, 100])).to eq([17, 100])
  end
end