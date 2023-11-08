require 'rspec'
require './lib/free_range.rb'

RSpec.describe 'Free Range' do
  it 'converts ordered number array into array of ranges' do
    expect(numbers_to_ranges([1, 2, 3, 4, 5])).to eq(['1-5'])
    expect(numbers_to_ranges([6, 7, 8, 10, 11, 12])).to eq(['6-8', '10-12'])
    expect(numbers_to_ranges([1, 2, 3, 6, 7, 8])).to eq(['1-3', '6-8'])
    expect(numbers_to_ranges([1, 3, 4, 5, 6, 7, 8])).to eq(['1', '3-8'])
    expect(numbers_to_ranges([1])).to eq(['1'])
    expect(numbers_to_ranges([3, 4, 5, 10, 11, 12])).to eq(['3-5', '10-12'])
    expect(numbers_to_ranges([1, 2, 3, 4, 99, 100])).to eq(['1-4', '99-100'])
    expect(numbers_to_ranges([])).to eq([])
  end
end