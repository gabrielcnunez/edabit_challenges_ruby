require 'rspec'
require './lib/correct_inequality_signs'

RSpec.describe 'Correct Inequality Signs' do
  it 'returns boolean after evaluating whether inequality expression is correct' do
    expect(correct_signs("3 < 7 < 11")).to eq(true)
    expect(correct_signs("13 > 44 > 33 > 1")).to eq(false)
    expect(correct_signs("1 < 2 < 6 < 9 > 3")).to eq(true)
    expect(correct_signs("4 > 3 > 2 > 1")).to eq(true)
    expect(correct_signs("5 < 7 > 1")).to eq(true)
    expect(correct_signs("5 > 7 > 1")).to eq(false)
    expect(correct_signs("9 < 9")).to eq(false)
  end
end