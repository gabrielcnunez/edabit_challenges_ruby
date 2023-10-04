require 'rspec'
require './lib/positives_and_negatives'

RSpec.describe 'Positives and Negatives' do
  it 'validates whether an array alternates between positive and negative numbers' do
    expect(alternate_pos_neg([3, -2, 5, -5, 2, -8])).to eq(true)
    expect(alternate_pos_neg([-6, 1, -1, 4, -3])).to eq(true)
    expect(alternate_pos_neg([4, 4, -2, 3, -6, 10])).to eq(false)
    expect(alternate_pos_neg([34, 49, 33, 17, -47])).to eq(false)
    expect(alternate_pos_neg([22])).to eq(true)
    expect(alternate_pos_neg([41, 11, 37, -30, -29, 39, -45, 15, -41, 7])).to eq(false)
    expect(alternate_pos_neg([3, -7, 15, 18])).to eq(false)
    expect(alternate_pos_neg([40])).to eq(true)
    expect(alternate_pos_neg([40, 27, -44, -13, -31])).to eq(false)
    expect(alternate_pos_neg([40, 50, -7, 45, -7])).to eq(false)
    expect(alternate_pos_neg([-23, -16, -9, -15, 16])).to eq(false)
    expect(alternate_pos_neg([0, 0, 0, 0])).to eq(false)
    expect(alternate_pos_neg([50, 28, -5, 25, -14, -2, 20, 26, -32])).to eq(false)
    expect(alternate_pos_neg([24, -10])).to eq(true)
    expect(alternate_pos_neg([-2, 4, 16, -15, 24, 2])).to eq(false)
    expect(alternate_pos_neg([19, -12, -37, 44, -43, 44, 47])).to eq(false)
    expect(alternate_pos_neg([-21, 42, -11, 27, -16, 36, 37])).to eq(false)
    expect(alternate_pos_neg([30])).to eq(true)
    expect(alternate_pos_neg([3, -7, 15, -18])).to eq(true)
    expect(alternate_pos_neg([9, -4, 8, -16])).to eq(true)
    expect(alternate_pos_neg([3, -7, 15, -18, 0])).to eq(false)
    expect(alternate_pos_neg([0])).to eq(false)
    expect(alternate_pos_neg([0, 2, -5, 8, -12])).to eq(false)
  end
end