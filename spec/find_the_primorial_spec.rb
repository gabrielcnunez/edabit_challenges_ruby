require 'rspec'
require './lib/find_the_primorial'

RSpec.describe 'Find the Primorial' do
  it 'returns the product of a given number of first prime numbers' do
    expect(primorial(1)).to eq(2)
    expect(primorial(2)).to eq(6)
    expect(primorial(3)).to eq(30)
    expect(primorial(8)).to eq(9699690)
  end
end