require 'rspec'
require './lib/all_or_nothing.rb'

RSpec.describe 'All or Nothing' do
  it 'returns boolean w/r/t score being 100%' do
    expect(possibly_perfect(['A', '_', 'C', '_', 'B'], ['A', 'D', 'C', 'E', 'B'])).to eq(true)
    expect(possibly_perfect(['B', '_', 'B'], ['B', 'D', 'C'])).to eq(false)
    expect(possibly_perfect(['T', '_', 'F', 'F', 'F'], ['F', 'F', 'T', 'T', 'T'])).to eq(true)

    expect(possibly_perfect(['B', 'A', '_', '_'], ['B', 'A', 'C', 'C'])).to eq(true)
    expect(possibly_perfect(['A', 'B', 'A', '_'], ['B', 'A', 'C', 'C'])).to eq(true)
    expect(possibly_perfect(['A', 'B', 'C', '_'], ['B', 'A', 'C', 'C'])).to eq(false)

    expect(possibly_perfect(['B', '_'], ['C', 'A'])).to eq(true)
    expect(possibly_perfect(['B', 'A'], ['C', 'A'])).to eq(false)
    expect(possibly_perfect(['B'], ['B'])).to eq(true)

    expect(possibly_perfect(['_', 'T', '_', '_'], ['T', 'F', 'F', 'F'])).to eq(true)
    expect(possibly_perfect(['_', 'T', '_', '_'], ['T', 'T', 'F', 'T'])).to eq(true)
    expect(possibly_perfect(['_', 'T', 'T', 'T'], ['T', 'T', 'F', 'T'])).to eq(false)
    expect(possibly_perfect(['_', 'T', 'T', 'T'], ['T', 'T', 'T', 'T'])).to eq(true)
    expect(possibly_perfect(['_', 'T', 'T', 'T'], ['F', 'F', 'F', 'F'])).to eq(true)
  end
end