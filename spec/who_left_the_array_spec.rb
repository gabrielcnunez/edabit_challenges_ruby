require 'rspec'
require './lib/who_left_the_array'

RSpec.describe 'Who Left the Array' do
  it 'given two arrays, return the element missing from second array' do
    expect(missing([1, 2, 3, 4, 5, 6, 7, 8], [1, 3, 4, 5, 6, 7, 8])).to eq(2)
    expect(missing(['Jane', 'is', 'pretty', 'ugly'], ['Jane', 'is', 'pretty'])).to eq('ugly')
    expect(missing([true, true, false, false, true], [false, true, false, true])).to eq(true)
    expect(missing(['different', 'types', '5', 5, [5], {5 => nil}], ['5', 'different', [5], 'types', 5])).to eq({5 => nil})
    expect(missing('fate'.chars, 'fat'.chars)).to eq('e')
  end
end