require 'rspec'
require './lib/next_in_alphabet'

RSpec.describe 'Next in the Alphabet' do
  it 'returns the next letters alphabetically in a given string' do
    expect(next_letters("A")).to eq("B")
    expect(next_letters("ABC")).to eq("ABD")
    expect(next_letters("Z")).to eq("AA")
    expect(next_letters("CAZ")).to eq("CBA")
    expect(next_letters("AAA")).to eq("AAB")
    expect(next_letters("ZYZ")).to eq("ZZA")
    expect(next_letters("ZZZ")).to eq("AAAA")
    expect(next_letters("ACZZZ")).to eq("ADAAA")
    expect(next_letters("ZZZAZAZAZAZAZZZZ")).to eq("ZZZAZAZAZAZBAAAA")
    expect(next_letters("")).to eq("A")
    expect(next_letters("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ")).to eq("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
    expect(next_letters("EDABIS")).to eq("EDABIT")
    expect(next_letters("JOSHTZ")).to eq("JOSHUA")
  end
end