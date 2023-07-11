require 'rspec'
require './lib/next_prime'

RSpec.describe 'Next Prime' do
  it 'returns the next prime number after a given integer' do
    expect(next_prime(12)).to eq(13)
    expect(next_prime(24)).to eq(29)
    expect(next_prime(11)).to eq(11)
    expect(next_prime(13)).to eq(13)
    expect(next_prime(14)).to eq(17)
    expect(next_prime(33)).to eq(37)
  end
end