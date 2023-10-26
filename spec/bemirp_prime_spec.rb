require 'rspec'
require './lib/bemirp_prime'

RSpec.describe 'I Put My Prime Down, Flip It and Reverse It' do
  it 'takes number, returns string character based on being prime, reverse prime, upside down prime, or a combo of prime types' do
    expect(bemirp(101)).to eq('P')
    expect(bemirp(1011)).to eq('C')
    expect(bemirp(1069)).to eq('E')
    expect(bemirp(1061)).to eq('B')
    expect(bemirp(198101)).to eq('C')
    expect(bemirp(1009)).to eq('E')
    expect(bemirp(10091)).to eq('B')
    expect(bemirp(18616061)).to eq('B')
    expect(bemirp(10909)).to eq('E')
    expect(bemirp(16069)).to eq('P')
  end
end