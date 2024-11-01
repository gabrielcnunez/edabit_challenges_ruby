require 'rspec'
require './lib/smallest_transform'

RSpec.describe 'Smallest Transform' do
  it 'takes int, returns smallest # of changes to increment digits to be the same' do
    expect(smallest_transform(399)).to eq(6)
    expect(smallest_transform(1234)).to eq(4)
    expect(smallest_transform(153)).to eq(4)
    expect(smallest_transform(33338)).to eq(5)
    expect(smallest_transform(7777)).to eq(0)
    expect(smallest_transform(977)).to eq(2)
    expect(smallest_transform(589)).to eq(4)
  end
end