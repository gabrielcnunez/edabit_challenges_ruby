require 'rspec'
require './lib/map_letters_in_string'

RSpec.describe 'Map the Letters in a String' do
  it 'given a word, creates a hash of each letter and its index(es) in an array' do
    expect(map_letters("")).to eq({})
    expect(map_letters("a")).to eq({:a=>[0]})
    expect(map_letters("abcdefg")).to eq({:a=>[0], :b=>[1], :c=>[2], :d=>[3], :e=>[4], :f=>[5], :g=>[6]})
    expect(map_letters("balloon")).to eq({:b=>[0], :a=>[1], :l=>[2, 3], :o=>[4, 5], :n=>[6]})
    expect(map_letters("imagining")).to eq({:i=>[0, 4, 6], :m=>[1], :a=>[2], :g=>[3, 8], :n=>[5, 7]})
    expect(map_letters("mummy")).to eq({:m=>[0, 2, 3], :u=>[1], :y=>[4]})
    expect(map_letters("aaaaaaabaaabaaabbb")).to eq({:a=>[0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 13, 14], :b=>[7, 11, 15, 16, 17]})
  end
end