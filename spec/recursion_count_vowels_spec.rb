require 'rspec'
require './lib/recursion_count_vowels'

RSpec.describe 'Recursion: Count Vowels' do
  it 'returns number of vowels in a string using recursion' do
    count = 0
    name = :count_vowels

    TracePoint.trace(:call) do |t| 
      count += 1 if t.method_id == name 
    end

    expect(count_vowels("apple")).to eq(2)
    expect(count).to_not eq(1)
    count = 0

    expect(count_vowels("cheesecake")).to eq(5)
    expect(count).to_not eq(1)
    count = 0

    expect(count_vowels("martini")).to eq(3)
    expect(count).to_not eq(1)
    count = 0

    expect(count_vowels("rhythm")).to eq(0)
    expect(count).to_not eq(1)
    count = 0

    expect(count_vowels("")).to eq(0)
    expect(count_vowels("b")).to eq(0)
    expect(count_vowels("a")).to eq(1)
    expect(count_vowels("bbbbbb")).to eq(0)
    expect(count_vowels("bbbbba")).to eq(1)
    expect(count_vowels("abbbb")).to eq(1)
    expect(count_vowels("bbbab")).to eq(1)
    expect(count_vowels("bbaab")).to eq(2)
    expect(count_vowels("baabab")).to eq(3)
  end
end