require 'rspec'
require './lib/add_up'

RSpec.describe "add_up" do
  it 'adds up all numbers from 1 to given integer' do
    expect(add_up(4)).to eq(10)
    expect(add_up(13)).to eq(91)
    expect(add_up(600)).to eq(180300)
  end
end