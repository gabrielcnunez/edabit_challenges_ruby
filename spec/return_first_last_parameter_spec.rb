require 'rspec'
require './lib/return_first_last_parameter'

RSpec.describe 'Return First and Last Parameter' do
  it 'returns the first and last parameter passed into the function' do
    expect(first_arg(1, 2, 3)).to eq(1)
    expect(first_arg('a', 'b', 'c')).to eq('a')
    expect(first_arg(8)).to eq(8)
    expect(first_arg()).to eq(nil)
    expect(last_arg(1, 2, 3)).to eq(3)
    expect(last_arg('a', 'b', 'c')).to eq('c')
    expect(last_arg(8)).to eq(8)
    expect(last_arg()).to eq(nil)
  end
end