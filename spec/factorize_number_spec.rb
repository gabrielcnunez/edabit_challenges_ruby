require 'rspec'
require './lib/factorize_number'

RSpec.describe 'factorize a number' do
  it 'should return an array of all factors of a given integer' do
    expect(factorize(12)).to eq([1, 2, 3, 4, 6, 12])
    expect(factorize(4)).to eq([1, 2, 4])
    expect(factorize(17)).to eq([1, 17])
    expect(factorize(24)).to eq([1, 2, 3, 4, 6, 8, 12, 24])
    expect(factorize(1)).to eq([1])
  end
end