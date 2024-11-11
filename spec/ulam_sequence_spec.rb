require 'rspec'
require './lib/ulam_sequence'

RSpec.describe 'Ulam Sequence' do
  it 'takes number, returns that number in the Ulam sequence' do
    expect(ulam(4)).to eq(4)
    expect(ulam(9)).to eq(16)
    expect(ulam(38)).to eq(180)
    expect(ulam(99)).to eq(688)
    expect(ulam(206)).to eq(1856)
    expect(ulam(495)).to eq(5597)
    expect(ulam(577)).to eq(6782)
  end
end