require 'rspec'
require './lib/we_have_a_house'

RSpec.describe 'We Have a House' do
  it 'takes house dimensions as four arguments, returns areas of painting or error message' do
    expect(we_have_house(8, 30, 32, 8)).to eq("Yellow: 873, Gray: 242")
    expect(we_have_house(10, 31, 30, 11)).to eq("No permission.")
    expect(we_have_house(8, 30, 30, 8)).to eq("Yellow: 849, Gray: 234")
    expect(we_have_house(9, 20, 18, 8)).to eq("Yellow: 581, Gray: 146")
    expect(we_have_house(9, 14, 20, 9)).to eq("House too small.")
    expect(we_have_house(8, 16, 12, 8)).to eq("Yellow: 353, Gray: 106")
    expect(we_have_house(10, 25, 25, 0)).to eq("Yellow: 689, Gray: 194")
    expect(we_have_house(8, 45, 42, 8)).to eq("House too big.")
    expect(we_have_house(10, 40, 40, 10)).to eq("Yellow: 1569, Gray: 314")
    expect(we_have_house(10, 15, 10, 7)).to eq("House too small.")
    expect(we_have_house(9, 38, 36, 9)).to eq("Yellow: 1267, Gray: 290")
    expect(we_have_house(8, 15, 12, 6)).to eq("Yellow: 303, Gray: 102")
    expect(we_have_house(8, 30, 45, 6)).to eq("House too big.")
    expect(we_have_house(9, 20, 14, 8)).to eq("Yellow: 525, Gray: 130")
  end
end