require 'rspec'
require './lib/snail_crawl'

RSpec.describe 'Snail Crawl' do
  it 'calculates the minutes it takes a snail to crawl out of a bucket' do
    expect(cal(31)).to eq(7)
    expect(cal(150)).to eq(30)
    expect(cal(200)).to eq(56)
    expect(cal(15)).to eq(3)
    expect(cal(151)).to eq(47)
    expect(cal(160)).to eq(48)
    expect(cal(300)).to eq(92)
  end
end