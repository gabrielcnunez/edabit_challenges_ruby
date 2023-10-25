require 'rspec'
require './lib/reverse_polish_notation'

RSpec.describe 'Reverse Polish Notation' do
  it 'takes array of math problem in Reverse Polish Notation, returns answer' do
    expect(rpn([1, 2, "*", 4, 5, "*", "+"])).to eq(22)
    expect(rpn([1, 1, "+"])).to eq(2)
    expect(rpn([16, 16, "/"])).to eq(1)
    expect(rpn([7, 6, "-"])).to eq(1)
    expect(rpn([1, 2, 3, 4, 5, 6, "+", "+", "+", "+", "+"])).to eq(21)
    expect(rpn([1])).to eq(1)
    expect(rpn([12345, 12344, "-"])).to eq(1)
    expect(rpn([1, 7, "*"])).to eq(7)
    expect(rpn([1, 5, "+", 2, "/"])).to eq(3)
    expect(rpn([111, 222, "+", 333, "-"])).to eq(0)
    expect(rpn([1, 2, "-"])).to eq(-1)
    expect(rpn([1, 1, "/", 2, "+", 2, "*", 3, "/"])).to eq(2)
    expect(rpn([9, 9, "*", 6, 6, "*", "-", 9, "/"])).to eq(5)
    expect(rpn([15, 15, "*"])).to eq(225)
    expect(rpn([1, 1, 1, 1, 1, 1, "+", "+", "+", "+", "+"])).to eq(6)
  end
end