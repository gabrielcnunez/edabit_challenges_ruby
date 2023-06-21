require 'rspec'
require './lib/array_of_multiples'

RSpec.describe 'array_of_multiples' do
  it 'takes a number and length and returns an array of multiples of number until array reaches length' do
    expect(array_of_multiples(7, 5)).to eq([7, 14, 21, 28, 35])
    expect(array_of_multiples(12, 10)).to eq([12, 24, 36, 48, 60, 72, 84, 96, 108, 120])
    expect(array_of_multiples(17, 7)).to eq([17, 34, 51, 68, 85, 102, 119])
    expect(array_of_multiples(630, 14)).to eq([630, 1260, 1890, 2520, 3150, 3780, 4410, 5040, 5670, 6300, 6930, 7560, 8190, 8820])
    expect(array_of_multiples(140, 3)).to eq([140, 280, 420])
    expect(array_of_multiples(7, 8)).to eq([7, 14, 21, 28, 35, 42, 49, 56])
    expect(array_of_multiples(11, 21)).to eq([11, 22, 33, 44, 55, 66, 77, 88, 99, 110, 121, 132, 143, 154, 165, 176, 187, 198, 209, 220, 231])
  end
end