require 'rspec'
require './lib/printer_levels'

RSpec.describe 'Printer Levels' do
  it 'given hash of printer ink levels, return max number of pages that can be printed' do
    expect(ink_levels({
      "cyan": 23,
      "magenta": 12,
      "yellow": 10
    })).to eq(10)

    expect(ink_levels({
      "cyan": 432,
      "magenta": 543,
      "yellow": 777
    })).to eq(432)

    expect(ink_levels({
      "cyan": 700,
      "magenta": 700,
      "yellow": 0
    })).to eq(0)

    expect(ink_levels({
      "cyan": 70,
      "magenta": 700,
      "yellow": 1
    })).to eq(1)

    expect(ink_levels({
      "cyan": 6543,
      "magenta": 74543,
      "yellow": 2345678
    })).to eq(6543)

    expect(ink_levels({
      "cyan": 1,
      "magenta": 1,
      "yellow": 1
    })).to eq(1)

    expect(ink_levels({
      "cyan": 700,
      "magenta": 700,
      "yellow": 700
    })).to eq(700)
  end
end
