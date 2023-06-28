require 'rspec'
require './lib/check_square_and_cube'

RSpec.describe 'check_square_and_cube' do
  it 'takes two numbers to see if the square root of the first equals the cube root of the second' do
    expect(check_square_and_cube([4, 8])).to eq(true)
    expect(check_square_and_cube([5, 12])).to eq(false)
    expect(check_square_and_cube([9, 27])).to eq(true)
    expect(check_square_and_cube([25, 120])).to eq(false)
    expect(check_square_and_cube([25, 125])).to eq(true)
    expect(check_square_and_cube([36, 215])).to eq(false)
    expect(check_square_and_cube([36, 217])).to eq(false)
    expect(check_square_and_cube([144, 1728])).to eq(true)
    expect(check_square_and_cube([1, 1])).to eq(true)
    expect(check_square_and_cube([676, 17576])).to eq(true)
  end 
end