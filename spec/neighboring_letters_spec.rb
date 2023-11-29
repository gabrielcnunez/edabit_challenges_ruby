require 'rspec'
require './lib/neighboring_letters'

RSpec.describe 'Neighboring Letters' do
  it 'takes strings, checks if every character is preceded AND followed by neighboring character in alphabet' do
    expect(neighboring("abcdedcba")).to eq(true)
    expect(neighboring("aba")).to eq(true)
    expect(neighboring("efghihfe")).to eq(false)
    expect(neighboring("xyzyx")).to eq(true)
    expect(neighboring("mnopqrstsrqponm")).to eq(true)
    expect(neighboring("zyz")).to eq(true)
    expect(neighboring("aeiou")).to eq(false)
    expect(neighboring("cdefg")).to eq(true)
    expect(neighboring("qrstuv")).to eq(true)
    expect(neighboring("aaaaa")).to eq(false)
  end
end