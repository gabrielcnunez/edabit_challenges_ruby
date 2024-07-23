require 'rspec'
require './lib/esthetic_numbers'

RSpec.describe 'Esthetic Numbers' do
  it 'given positive int, returns bases (from base2 to base10) where every pair of digits
  has absolute difference of 1 or string "Anti-Esthetic" if no base exists' do
    expect(esthetic(10)).to eq([2, 3, 8, 10])
    expect(esthetic(23)).to eq([3, 5, 7, 10])
    expect(esthetic(666)).to eq([8])
    expect(esthetic(13)).to eq([5, 6])
    expect(esthetic(1)).to eq([2, 3, 4, 5, 6, 7, 8, 9, 10])
    expect(esthetic(9)).to eq([4, 7, 9, 10])
    expect(esthetic(74)).to eq("Anti-Esthetic")
    expect(esthetic(740)).to eq([4, 6, 9])
    expect(esthetic(928)).to eq("Anti-Esthetic")
    expect(esthetic(259259)).to eq([9])
    expect(esthetic(883271)).to eq("Anti-Esthetic")
    expect(esthetic(1080898)).to eq([7])
    expect(esthetic(1080899)).to eq("Anti-Esthetic")     
  end
end