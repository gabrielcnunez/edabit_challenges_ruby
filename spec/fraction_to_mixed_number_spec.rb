require 'rspec'
require './lib/fraction_to_mixed_number'

RSpec.describe 'Fraction to Mixed Number' do
  it 'takes string representing fraction, returns string as mixed number if applicable' do
    expect(mixed_number("5/4")).to eq("1 1/4")
    expect(mixed_number("6/4")).to eq("1 1/2")
    expect(mixed_number("8/4")).to eq("2")
    expect(mixed_number("4/6")).to eq("2/3")
    expect(mixed_number("-1/4")).to eq("-1/4")
    expect(mixed_number("-5/4")).to eq("-1 1/4")
    expect(mixed_number("-8/4")).to eq("-2")
    expect(mixed_number("0/32768")).to eq("0")
    expect(mixed_number("73/5")).to eq("14 3/5")
    expect(mixed_number("3855/889785")).to eq("257/59319")
    expect(mixed_number("82346/197")).to eq("418")
    expect(mixed_number("-2037450/204")).to eq("-9987 1/2")
  end
end