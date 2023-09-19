require 'rspec'
require './lib/sexagenary_cycle'

RSpec.describe 'Sexagenary Cycle (Chinese Zodiac)' do
  it 'takes year, return string of stem and branch combo in sexagenary cycle' do
    expect(sexagenary(1971)).to eq('Metal Pig')
    expect(sexagenary(1927)).to eq('Fire Rabbit')
    expect(sexagenary(2017)).to eq('Fire Rooster')
    expect(sexagenary(2000)).to eq('Metal Dragon')
    expect(sexagenary(1958)).to eq('Earth Dog')
    expect(sexagenary(1942)).to eq('Water Horse')
    expect(sexagenary(1974)).to eq('Wood Tiger')
  end
end