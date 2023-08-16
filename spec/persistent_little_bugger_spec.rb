require 'rspec'
require './lib/persistent_little_bugger'

RSpec.describe 'Persistent Little Bugger' do
  it 'takes an integer and returns its multiplicative persistence' do
    expect(bugger(39)).to eq(3)
    expect(bugger(4)).to eq(0)
    expect(bugger(25)).to eq(2)
    expect(bugger(999)).to eq(4)
  end
end