require 'rspec'
require './lib/self_describing_numbers'

RSpec.describe 'Digital Egomania: the Self-Describing Numbers' do
  it 'takes pos integer, returns boolean whether number is self-describing' do
    expect(is_self_describing(10123331)).to eq(true)
    expect(is_self_describing(224444)).to eq(true)
    expect(is_self_describing(2211)).to eq(false)
    expect(is_self_describing(333)).to eq(false)
    expect(is_self_describing(1)).to eq(false)
    expect(is_self_describing(27273332)).to eq(true)
    expect(is_self_describing(11)).to eq(false)
    expect(is_self_describing(22)).to eq(true)
    expect(is_self_describing(19212332)).to eq(true)
    expect(is_self_describing(4444332231)).to eq(false)
    expect(is_self_describing(881722888888)).to eq(true)
  end
end