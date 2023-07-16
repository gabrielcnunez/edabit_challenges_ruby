require 'rspec'
require './lib/make_numbers'

RSpec.describe 'Can you make the numbers?' do
  it 'returns boolean if array of single digit groups can make number(s)' do
    expect(can_build([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [])).to eq(true)
    expect(can_build([1, 1, 0, 0, 0, 0, 0, 0, 1, 0], [1, 8])).to eq(true)
    expect(can_build([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [1, 80])).to eq(true)
    expect(can_build([0, 1, 2, 2, 3, 0, 0, 0, 1, 1], [123, 444, 92])).to eq(true)
    expect(can_build([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [10, 23, 45, 6789])).to eq(true)
    expect(can_build([0, 2, 3, 0, 5, 0, 0, 0, 0, 1], [11, 2, 22, 49, 444, 4])).to eq(true)
    expect(can_build([1, 1, 0, 0, 0, 0, 0, 0, 1, 0], [1, 80, 0])).to eq(false)
    expect(can_build([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [1])).to eq(false)
    expect(can_build([0, 2, 3, 0, 5, 0, 0, 0, 0, 1], [11, 7, 2, 22, 49, 444, 4])).to eq(false)
    expect(can_build([0, 2, 3, 0, 5, 0, 0, 0, 0, 1], [11, 2, 22, 49, 444, 44])).to eq(false)
    expect(can_build([10, 2, 3, 8, 5, 8, 5, 5, 3, 1], [11, 2, 22, 49, 444, 998, 87, 44])).to eq(false)
  end
end