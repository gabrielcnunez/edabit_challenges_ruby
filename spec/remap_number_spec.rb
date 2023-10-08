require 'rspec'
require './lib/remap_number'

RSpec.describe 'Re-Map a Number from One Range to Another' do
  it 'takes value and its range, returns value remapped to new range' do
    expect(remap(7, 2, 12, 0, 100)).to eq(50)
    expect(remap(17, 5, 55, 100, 30)).to eq(83.2)
    expect(remap(2.5, 2, 3, -80, 80)).to eq(0)
    expect(remap(50, 1, 51, 0, 100)).to eq(98)
    expect(remap(0, 0, 0, 0, 0)).to eq(0)
    expect(remap(20, 10, 50, 50, 10)).to eq(40)
    expect(remap(0, 5, -20, 60, 1000)).to eq(248)
    expect(remap(17, 17, 17, 519, 1085)).to eq(0)
  end
end