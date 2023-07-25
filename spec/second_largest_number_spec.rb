require 'rspec'
require './lib/second_largest_number'

RSpec.describe 'Find the second largest number' do
  it 'returns the second largest integer from an array in integers' do
    expect(second_largest([10, 40, 30, 20, 50])).to eq(40)
    expect(second_largest([25, 143, 89, 13, 105])).to eq(105)
    expect(second_largest([54, 23, 11, 17, 10])).to eq(23)
    expect(second_largest([513, 211, 131, 417, 11])).to eq(417)
    expect(second_largest([63, 44, 11, 22, 33, 66, 65])).to eq(65)
  end
end