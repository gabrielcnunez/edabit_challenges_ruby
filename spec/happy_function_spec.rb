require 'rspec'
require './lib/happy_function'

RSpec.describe 'The Happy Function' do
  it 'given positive number, return if number is happy with number of steps' do
    expect(happy_algorithm(139)).to eq("HAPPY 5")
    expect(happy_algorithm(67)).to eq("SAD 10")
    expect(happy_algorithm(1)).to eq("HAPPY 1")
    expect(happy_algorithm(44)).to eq("HAPPY 4")
    expect(happy_algorithm(89)).to eq("SAD 8")
    expect(happy_algorithm(10)).to eq("HAPPY 1")
    expect(happy_algorithm(1327)).to eq("SAD 17")
    expect(happy_algorithm(2871)).to eq("SAD 17")
    expect(happy_algorithm(3970)).to eq("HAPPY 6")
    expect(happy_algorithm(5209)).to eq("SAD 11")
    expect(happy_algorithm(6329)).to eq("HAPPY 3")
    expect(happy_algorithm(8888)).to eq("SAD 12")
    expect(happy_algorithm(9331)).to eq("HAPPY 2")
    expect(happy_algorithm(10000)).to eq("HAPPY 1")
  end
end