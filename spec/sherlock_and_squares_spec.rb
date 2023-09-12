require 'rspec'
require './lib/sherlock_and_squares'

RSpec.describe 'Sherlock and Squares' do
  it 'returns number of square integers in a given range of integers' do
    expect(squares(35, 70)).to eq(3)
    expect(squares(100, 1000)).to eq(22)
    expect(squares(3, 9)).to eq(2)
    expect(squares(17, 24)).to eq(0)
    expect(squares(433, 100000)).to eq(296)
    expect(squares(1, 1000000000)).to eq(31622)
    expect(squares(89784519, 103811134)).to eq(713)
    expect(squares(50979851, 733216221)).to eq(19937)
  end
end