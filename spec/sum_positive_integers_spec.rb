require 'rspec'
require './lib/sum_positive_integers'

RSpec.describe 'Sum of Positive Integers' do
  it 'takes a string of integers and other characters, returns sum of positive integers only' do
    expect(positive_sum("-12#-33 13%14&-11")).to eq(27)
    expect(positive_sum("22 13%14&-11-22 13 12 0")).to eq(74)
    expect(positive_sum("3%4&-1 13 a 20 -2 b c")).to eq(40)
    expect(positive_sum("2 3%-144&-1123 -2122")).to eq(5)
    expect(positive_sum("-123 -8 1")).to eq(1)
    expect(positive_sum("-122 2")).to eq(2)
    expect(positive_sum("-121 0 3")).to eq(3)
    expect(positive_sum("0 12 12 2")).to eq(26)
  end
end