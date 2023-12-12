require 'rspec'
require './lib/piggy_bank'

RSpec.describe 'Piggy Bank' do
  it 'returns number of days saving money needed to buy a new car' do
    expect(num_of_days(2050, 1200, 10)). to eq(53)
    expect(num_of_days(10000, 2500, 50)). to eq(123)
    expect(num_of_days(3333, 1111, 22)). to eq(75)
    expect(num_of_days(1000, 100, 0)). to eq(97)
    expect(num_of_days(19999, 5000, 5)). to eq(409)
    expect(num_of_days(500, 300, 50)). to eq(4)
    expect(num_of_days(7000, 6500, 250)). to eq(2)
  end
end