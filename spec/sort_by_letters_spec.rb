require 'rspec'
require './lib/sort_by_letters'

RSpec.describe 'Sort by the letters' do
  it 'sorts array of strings by letter contained within each string' do
    expect(sort_by_letter(["932c", "832u32", "2344b"])).to eq(["2344b", "932c", "832u32"])
    expect(sort_by_letter(["99a", "78b", "c2345", "11d"])).to eq(["99a", "78b", "c2345", "11d"])
    expect(sort_by_letter(["572z", "5y5", "304q2"])).to eq(["304q2", "5y5", "572z"])
    expect(sort_by_letter([])).to eq([])
  end
end