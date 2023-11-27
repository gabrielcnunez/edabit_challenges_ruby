require 'rspec'
require './lib/find_repeating'

RSpec.describe 'Find Repeating' do
  it 'accepts strings, groups repeated values based on certain criteria' do
    expect(find_repeating('')).to eq([])
    expect(find_repeating('a')).to eq([['a', 0, 0, 1]])
    expect(find_repeating('1337')).to eq([['1', 0, 0, 1], ['3', 1, 2, 2], ['7', 3, 3, 1]])
    expect(find_repeating('aabbb')).to eq([['a', 0, 1, 2], ['b', 2, 4, 3]])
    expect(find_repeating('addressee')).to eq([['a', 0, 0, 1], ['d', 1, 2, 2], ['r', 3, 3, 1], ['e', 4, 4, 1], ['s', 5, 6, 2], ['e', 7, 8, 2]])
    expect(find_repeating('aabbbaabbb')).to eq([['a', 0, 1, 2], ['b', 2, 4, 3], ['a', 5, 6, 2], ['b', 7, 9, 3]])
    expect(find_repeating('1111222233334444')).to eq([['1', 0, 3, 4], ['2', 4, 7, 4], ['3', 8, 11, 4], ['4', 12, 15, 4]])
    expect(find_repeating('1000000000000066600000000000001')).to eq([['1', 0, 0, 1], ['0', 1, 13, 13], ['6', 14, 16, 3], ['0', 17, 29, 13], ['1', 30, 30, 1]])
  end
end