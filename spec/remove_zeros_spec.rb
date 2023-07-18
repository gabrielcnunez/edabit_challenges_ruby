require 'rspec'
require './lib/remove_zeros'

RSpec.describe 'Remove trailing and leading zeros' do
  it 'takes a number as a string and returns it without leading, trailing zeros' do
    expect(remove_zeros("230.000")).to eq("230")
    expect(remove_zeros("00402")).to eq("402")
    expect(remove_zeros("03.1400")).to eq("3.14")
    expect(remove_zeros("30")).to eq("30")
    expect(remove_zeros("30.0000")).to eq("30")
    expect(remove_zeros("24340")).to eq("24340")
    expect(remove_zeros("0404040")).to eq("404040")
    expect(remove_zeros("0")).to eq("0")
    expect(remove_zeros("00")).to eq("0")
    expect(remove_zeros("0.000000")).to eq("0")
    expect(remove_zeros("0000.000")).to eq("0")
    expect(remove_zeros("00.0001")).to eq("0.0001")
    expect(remove_zeros("10000")).to eq("10000")
    expect(remove_zeros("1345")).to eq("1345")
    expect(remove_zeros("30.000020")).to eq("30.00002")
  end
end