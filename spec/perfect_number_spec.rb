require 'rspec'
require './lib/perfect_number'

RSpec.describe 'Perfect Number' do
  it 'returns bool whether number can be written as sum of its factors' do
    expect(check_perfect(6)).to eq(true)
    expect(check_perfect(28)).to eq(true)
    expect(check_perfect(496)).to eq(true)
    expect(check_perfect(8128)).to eq(true)
    expect(check_perfect(33550336)).to eq(true)
    expect(check_perfect(12)).to eq(false)
    expect(check_perfect(97)).to eq(false)
    expect(check_perfect(481)).to eq(false)
    expect(check_perfect(1001)).to eq(false)
    expect(check_perfect(55555)).to eq(false)
  end
end