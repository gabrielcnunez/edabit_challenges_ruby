require 'rspec'
require './lib/sum_of_vowels'

RSpec.describe 'Sum of V0w3ls' do
  it 'returns sum of vowels, where some vowels are considered numbers' do
    expect(sum_of_vowels('Let\'s test this function.')).to eq(8)
    expect(sum_of_vowels('Do I get the correct output?')).to eq(10)
    expect(sum_of_vowels('I love edabit!')).to eq(12)
    expect(sum_of_vowels('Will you still need me, will you still feed me when I\'m 64?')).to eq(26)
    expect(sum_of_vowels('The greatest glory in living lies not in never falling, but in rising every time we fall.')).to eq(52)
  end
end