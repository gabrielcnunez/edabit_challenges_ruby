require 'rspec'
require './lib/sum_slices_of_array'

RSpec.describe 'Sum of Slices of an Array (Part 1)' do
  it 'takes array, returns an array of sum of each of its slices' do
    expect(sum_of_slices([10, 29, 13, 14, 15, 16, 17, 31, 20, 10, 29, 13, 14, 15, 16, 17, 31, 20, 100])).to eq([97, 78, 87, 68, 100])
    expect(sum_of_slices([58,3,	38,	99,	10])).to eq([99, 99, 10])
    expect(sum_of_slices([13])).to eq([13])
    expect(sum_of_slices([62,	406,	343,	234,	244,	200,	304,	462,	212,	48,	166,	71,	80,	51,	307,	442,	368,	235,	199,	411,	100,	203,	330,	437,	226,	365,	337,	464,	14,	350])).to eq([62, 406, 343, 234, 244, 200, 304, 462, 212,  48, 166,  71,  80,  51, 307, 442, 368, 235, 199, 411, 100, 203, 330, 437, 226, 365, 337, 464, 14, 350])
    expect(sum_of_slices([30, 15, 75,	47])).to eq([45, 75, 47])
  end
end