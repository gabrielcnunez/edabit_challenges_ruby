require 'rspec'
require './lib/working_9_to_5'

RSpec.describe 'Working 9 to 5' do
  it 'calculates overtime and pay associated with overtime' do
    expect(over_time([9, 17, 30, 1.5])).to eq("$240.00")
    expect(over_time([9, 18, 40, 2])).to eq("$400.00")
    expect(over_time([13, 20, 32.5, 2])).to eq("$325.00")
    expect(over_time([9, 13, 25, 1.5])).to eq("$100.00")
    expect(over_time([11.5, 19, 40, 1.8])).to eq("$364.00")
    expect(over_time([10, 17, 30, 1.5])).to eq("$210.00")
    expect(over_time([10.5, 17, 32.25, 1.5])).to eq("$209.63")
    expect(over_time([16, 18, 30, 1.8])).to eq("$84.00")
    expect(over_time([18, 20, 32.5, 2])).to eq("$130.00")
    expect(over_time([13.25, 15, 30, 1.5])).to eq("$52.50")
    expect(over_time([13, 21, 38.6, 1.8])).to eq("$432.32")
  end
end