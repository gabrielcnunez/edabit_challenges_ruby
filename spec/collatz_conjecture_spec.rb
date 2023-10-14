require 'rspec'
require './lib/collatz_conjecture'

RSpec.describe 'Collatz Conjecture' do
  it 'given two positive integers, return which one takes fewer steps to reach 1 when passed through Collatz sequence' do
    expect(collatz(10, 15)).to eq("a")
    expect(collatz(13, 16)).to eq("b")
    expect(collatz(53782, 72534)).to eq("b")
    expect(collatz(72221, 11198)).to eq("b")
    expect(collatz(1723817263, 837249873748)).to eq("a")
    expect(collatz(556238, 667822)).to eq("b")
    expect(collatz(4, 3)).to eq("a")
    expect(collatz(64287364823648762384623847823648, 767623964723864823648725736487262)).to eq("a")
    expect(collatz(46287364872837482, 1267650600228229401496703205376)).to eq("b")
  end
end