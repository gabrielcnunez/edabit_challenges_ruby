require 'rspec'
require './lib/squaring_the_circle'

RSpec.describe 'Squaring the Circle' do
  it 'takes number of sides of regualar polygon inscribed in circle, returns perimeter' do
    expect(circle(3)).to eq(82.699)
    expect(circle(4)).to eq(90.032)
    expect(circle(8)).to eq(97.45)
    expect(circle(90)).to eq(99.98)
    expect(circle(600)).to eq(100.0)
  end
end