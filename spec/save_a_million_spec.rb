require 'rspec'
require './lib/save_a_million'

RSpec.describe 'When Will You Save a Million?' do
  it 'takes first paycheck amount and multiplier, returns number of month to save a million' do
    expect(million_in_month(10,2)).to eq(17)
    expect(million_in_month(5,2)).to eq(18)
    expect(million_in_month(2,5)).to eq(10)
    expect(million_in_month(20,4)).to eq(9)
    expect(million_in_month(50,100)).to eq(4)
    expect(million_in_month(1,1.01)).to eq(926)
    expect(million_in_month(15,2)).to eq(17)
    expect(million_in_month(20,2)).to eq(16)
    expect(million_in_month(100,1.1)).to eq(73)
    expect(million_in_month(100,1.01)).to eq(464)
    expect(million_in_month(666,6)).to eq(5)
    expect(million_in_month(11,11)).to eq(6)
    expect(million_in_month(1,2)).to eq(20)
    expect(million_in_month(2,2)).to eq(19)
    expect(million_in_month(3,2)).to eq(19)
    expect(million_in_month(4,2)).to eq(18)
    expect(million_in_month(5,2)).to eq(18)
  end
end