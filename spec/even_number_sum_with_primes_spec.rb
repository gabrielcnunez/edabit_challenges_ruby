require 'rspec'
require './lib/even_number_sum_with_primes'

RSpec.describe 'Add up to Even Number with Primes' do
  it 'takes even number, returns array of all pairs of prime numbers that sum to given number' do
    expect(prime_pair_arr(10)).to eq(["3+7", "5+5"])
    expect(prime_pair_arr(20)).to eq(["3+17", "7+13"])
    expect(prime_pair_arr(30)).to eq(["7+23", "11+19", "13+17"])
    expect(prime_pair_arr(50)).to eq(["3+47", "7+43", "13+37", "19+31"])
    expect(prime_pair_arr(80)).to eq(["7+73", "13+67", "19+61", "37+43"])
    expect(prime_pair_arr(100)).to eq(["3+97", "11+89", "17+83", "29+71", "41+59", "47+53"])
  end
end