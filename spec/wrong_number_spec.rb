require 'rspec'
require './lib/wrong_number'

RSpec.describe 'Wrong Number' do
  it 'takes 2D array of numbers, returns wrong number in array based on pattern' do
    arr=[
    [2, 2, 3, 6 ],
    [4, 5, 6, 15],
    [7, 8, 9, 24],
    [12,15,18,45]
    ]
    expect(wrong_number(arr)).to eq(1)

    arr=[
    [1, 2, 3, 7 ],
    [4, 5, 6, 15],
    [7, 8, 9, 24],
    [12,15,18,45]
    ]
    expect(wrong_number(arr)).to eq(6)

    arr=[
    [1, 2, 3, 6 ],
    [4, 5, 6, 15],
    [7, 8, 9, 24],
    [12,15,18,46]
    ]
    expect(wrong_number(arr)).to eq(45)
  end
end