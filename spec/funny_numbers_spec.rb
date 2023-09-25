require 'rspec'
require './lib/funny_numbers'

RSpec.describe 'Funny Numbers' do
  it 'takes number(n) and power(p), returns if sum of digits of n taken to successive powers of p equals k * n' do
    expect(funny_numbers(89, 1)).to eq(1)
    expect(funny_numbers(92, 1)).to eq(nil)
    expect(funny_numbers(46288, 3)).to eq(51)
    expect(funny_numbers(114, 3)).to eq(9)
    expect(funny_numbers(46288, 5)).to eq(nil)
    expect(funny_numbers(135, 1)).to eq(1)
    expect(funny_numbers(175, 1)).to eq(1)
    expect(funny_numbers(518, 1)).to eq(1)
    expect(funny_numbers(598, 1)).to eq(1)
    expect(funny_numbers(1306, 1)).to eq(1)
    expect(funny_numbers(2427, 1)).to eq(1)
    expect(funny_numbers(2646798, 1)).to eq(1)
    expect(funny_numbers(3456789, 1)).to eq(nil)
    expect(funny_numbers(3456789, 5)).to eq(nil)
    expect(funny_numbers(198, 1)).to eq(3)
    expect(funny_numbers(249, 1)).to eq(3)
    expect(funny_numbers(1377, 1)).to eq(2)
    expect(funny_numbers(1676, 1)).to eq(1)
    expect(funny_numbers(695, 2)).to eq(2)
    expect(funny_numbers(1878, 2)).to eq(19)
    expect(funny_numbers(7388, 2)).to eq(5)
    expect(funny_numbers(47016, 2)).to eq(1)
    expect(funny_numbers(542186, 2)).to eq(1)
    expect(funny_numbers(261, 3)).to eq(5)
    expect(funny_numbers(1385, 3)).to eq(35)
    expect(funny_numbers(2697, 3)).to eq(66)
    expect(funny_numbers(6376, 3)).to eq(10)
    expect(funny_numbers(6714, 3)).to eq(1)
    expect(funny_numbers(63760, 3)).to eq(1)
    expect(funny_numbers(63761, 3)).to eq(1)
    expect(funny_numbers(132921, 3)).to eq(4)
    expect(funny_numbers(10383, 6)).to eq(12933)
  end
end