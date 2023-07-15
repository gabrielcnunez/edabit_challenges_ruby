require 'rspec'
require './lib/directionally_challenged'

RSpec.describe 'Directionally challenged' do
  it 'returns the difference between a given route and the optimal route' do
    expect(route_diff(['N', 'E', 'S', 'W'])).to eq(4)
    expect(route_diff(['N', 'N', 'N', 'E', 'N', 'E'])).to eq(0)
    expect(route_diff(['N', 'S', 'N', 'S', 'E', 'W', 'E', 'E'])).to eq(6)
    expect(route_diff(['N', 'S', 'N', 'S', 'E'])).to eq(4)
    expect(route_diff(['N', 'N', 'S', 'S', 'S', 'S', 'E'])).to eq(4)
    expect(route_diff(['N', 'N', 'S', 'S', 'W', 'S', 'E'])).to eq(6)
    expect(route_diff(['N', 'S', 'E'])).to eq(2)
    expect(route_diff(['S', 'S', 'S'])).to eq(0)
    expect(route_diff(['S', 'S', 'S', 'S', 'S', 'N'])).to eq(2)
  end
end