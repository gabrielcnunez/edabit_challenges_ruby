require 'rspec'
require './lib/next_happy_year'

RSpec.describe 'Next Happy Year' do
  it 'takes year as integer, return next year that has unique digits' do
    expect(happy_year(1990)).to eq(2013)
    expect(happy_year(2017)).to eq(2018)
    expect(happy_year(2021)).to eq(2031)
    expect(happy_year(1001)).to eq(1023)
    expect(happy_year(1123)).to eq(1203)
    expect(happy_year(2001)).to eq(2013)
    expect(happy_year(2334)).to eq(2340)
    expect(happy_year(3331)).to eq(3401)
    expect(happy_year(1987)).to eq(2013)
    expect(happy_year(5555)).to eq(5601)
    expect(happy_year(7712)).to eq(7801)
    expect(happy_year(8088)).to eq(8091)
    expect(happy_year(8999)).to eq(9012)
    expect(happy_year(812)).to eq(813)
    expect(happy_year(1000000)).to eq(1023456)
  end
end