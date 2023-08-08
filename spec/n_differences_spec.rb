require 'rspec'
require './lib/n_differences'

RSpec.describe 'N Differences' do
  it 'takes an array of integers and finds differences until one integer is left' do
    expect(n_differences([5, 1, 9, 3, 4, 0])).to eq(-80)
    expect(n_differences([8, 9, 2, 5, 4, 3, 3, 1, 6])).to eq(-94)
    expect(n_differences([5, 1, 9, 6, 1, 7, 3, 4])).to eq(118)
    expect(n_differences([1, 1, 1, 1])).to eq(0)
    expect(n_differences([5, 9, 7, 3])).to eq(4)
    expect(n_differences([1, 5, 3, 9, 7])).to eq(-30)
    expect(n_differences([5, 8, 8])).to eq(-3)
    expect(n_differences([4, 0, 0, 0, 1])).to eq(5)
    expect(n_differences([3, 5])).to eq(2)
  end
end