require 'rspec'
require './lib/one_string_in_the_other.rb'

RSpec.describe 'Is One String in the Other?' do
  it 'takes two strings, returns bool if either string appears at end of other string' do
    expect(overlap("ABC", "Ican'tsingmyABC")).to eq(true)
    expect(overlap("abc", "Ican'tsingmyABC")).to eq(true)
    expect(overlap("Ican'tsingmyABC", "abc")).to eq(true)
    expect(overlap("*bc", "Ican'tsingmyABC")).to eq(true)
    expect(overlap("abc", "Ican'tsingmy***")).to eq(true)
    expect(overlap("ab", "Ican'tsingmy**c")).to eq(false)
    expect(overlap("hello world", "hello")).to eq(false)
    expect(overlap("+=", "this should work too +=")).to eq(true)
    expect(overlap("don't forget hyphens-", "-")).to eq(true)
    expect(overlap("don't forget periods ", ".")).to eq(false)
    expect(overlap("this will always be true", "*")).to eq(true)
    expect(overlap("this will always be false", "F")).to eq(false)
    expect(overlap("hey", "*********")).to eq(true)
    expect(overlap("a*c", "*b*")).to eq(true)
    expect(overlap("last test", "congrats you passed the last test")).to eq(true)
  end
end