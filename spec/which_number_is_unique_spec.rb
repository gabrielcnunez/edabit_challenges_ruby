require 'rspec'
require './lib/which_number_is_unique'

RSpec.describe 'Which Number is Unique' do
  it 'takes array of numbers, returns the number that is unique' do
    expect(unique([3, 3, 3, 7, 3, 3])).to eq(7)
    expect(unique([0, 0, 0.77, 0, 0])).to eq(0.77)
    expect(unique([0, 1, 1, 1, 1, 1, 1, 1])).to eq(0)
    expect(unique([-4, -4, -4, 4])).to eq(4)
    expect(unique([8, 8, 8, 8, 8, 8, 8, 0.5])).to eq(0.5)
    expect(unique([2, 1, 2, 2, 2, 2, 2, 2])).to eq(1)
  end
end