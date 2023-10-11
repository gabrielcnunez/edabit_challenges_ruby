require 'rspec'
require './lib/interquartile_range'

RSpec.describe 'Interquartile Range' do
  it 'takes array of numbers, returns interquartile range' do
    expect(iqr([1, 1, 3, 4, 4, 5, 5, 5, 6, 7, 9])).to eq(3.0)
    expect(iqr([6, 4, 4, 4, 3, 3, 2, 1])).to eq(1.5)
    expect(iqr([8.2, 3, 6, 6, 5, 2.6, 8, 4.9, 5, 7.9])).to eq(3.0)
    expect(iqr([14, 28, 0, 15, 12, 15, 15, 15])).to eq(2.0)
    expect(iqr([-3.1, -3.8, -14, 23, 0])).to eq(20.4)
    expect(iqr([-12, 0, 0, 0, 3])).to eq(7.5)
    expect(iqr([-3, 0, 0, 0, 0, 4.7])).to eq(0.0)
    expect(iqr([0, 0, 0, 0, 0, 0])).to eq(0.0)
    expect(iqr([0, 0, 0, 0, 0, 0, 0])).to eq(0.0)
  end
end