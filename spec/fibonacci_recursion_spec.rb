require 'rspec'
require './lib/fibonacci_recursion'

RSpec.describe 'Fibonacci Recursion' do
  it 'takes integer as index and returns Fibonacci sequence value at that index' do
    expect(fib(1)).to eq(1)
    expect(fib(2)).to eq(1)
    expect(fib(0)).to eq(0)
    expect(fib(3)).to eq(2)
    expect(fib(4)).to eq(3)
    expect(fib(5)).to eq(5)
    expect(fib(6)).to eq(8)
    expect(fib(7)).to eq(13)
    expect(fib(8)).to eq(21)
    expect(fib(9)).to eq(34)
    expect(fib(10)).to eq(55)
    expect(fib(11)).to eq(89)
    expect(fib(12)).to eq(144)
    expect(fib(13)).to eq(233)
    expect(fib(14)).to eq(377)
    expect(fib(15)).to eq(610)
    expect(fib(16)).to eq(987)
    expect(fib(17)).to eq(1597)
    expect(fib(18)).to eq(2584)
    expect(fib(19)).to eq(4181)
    expect(fib(20)).to eq(6765)
    expect(fib(21)).to eq(10946)
    expect(fib(22)).to eq(17711)
    expect(fib(23)).to eq(28657)
    expect(fib(24)).to eq(46368)
    expect(fib(25)).to eq(75025)
    expect(fib(26)).to eq(121393)
    expect(fib(27)).to eq(196418)
    expect(fib(28)).to eq(317811)
    expect(fib(29)).to eq(514229)
    expect(fib(30)).to eq(832040)
  end
end