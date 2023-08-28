require 'rspec'
require './lib/advanced_array_sort'

RSpec.describe 'Advanced array sort' do
  it 'takes array of numbers or strings, returns them sorted into sub-arrays in order of appearance' do
    # expect(advanced_sort([1,2,1,2])).to eq([[1,1],[2,2]])
    # expect(advanced_sort([2,1,2,1])).to eq([[2,2],[1,1]])
    expect(advanced_sort([3,2,1,3,2,1])).to eq([[3,3],[2,2],[1,1]])
    expect(advanced_sort([5,5,4,3,4,4])).to eq([[5,5],[4,4,4],[3]])
    expect(advanced_sort([80,80,4,60,60,3])).to eq([[80,80],[4],[60,60],[3]])
    expect(advanced_sort(['c','c','b','c','b',1,1])).to eq([['c','c','c'],['b','b'],[1,1]])
    expect(advanced_sort([1234, 1235, 1234, 1235, 1236, 1235])).to eq([[1234, 1234],[1235, 1235, 1235],[1236]])
    expect(advanced_sort(['1234', '1235', '1234', '1235', '1236', '1235'])).to eq([['1234', '1234'],['1235', '1235', '1235'],['1236']])
  end
end