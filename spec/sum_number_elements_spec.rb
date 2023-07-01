require 'rspec'
require './lib/sum_number_elements'

RSpec.describe 'numbers_sum' do
  it 'sums only the numbers in a given array' do
    expect(numbers_sum([1, 2, "13", "4", "645"])).to eq(3)
    expect(numbers_sum([true, false, "123", "75"])).to eq(0)
    expect(numbers_sum([1, 2, 3, 4, 5, true])).to eq(15)
    expect(numbers_sum(["abcd", 1234, false, true, 564, "hii"])).to eq(1798)
    expect(numbers_sum(["abcd", "abc45", "assssd", true])).to eq(0)
    expect(numbers_sum([])).to eq(0)
    expect(numbers_sum(["cghyki", "cd", 12114, 786, true, "me", "bey"])).to eq(12900)
  end
end