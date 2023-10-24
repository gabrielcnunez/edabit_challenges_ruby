require 'rspec'
require './lib/all_occurrences'

# frozen_string_literal: true

describe 'All Occurrences of an Element in an Array' do
  it "returns indices of all occurrences of item in array" do
    expect(get_indices(['a', 'a', 'b', 'a', 'b', 'a'], 'a')).to eq([0, 1, 3, 5])
    expect(get_indices([1, 5, 5, 2, 7], 7)).to eq([4])
    expect(get_indices([1, 5, 5, 2, 7], 5)).to eq([1, 2])
    expect(get_indices([1, 5, 5, 2, 7], 8)).to eq([])
    expect(get_indices([8, 8, 8, 8, 8], 8)).to eq([0, 1, 2, 3, 4])
    expect(get_indices([8, 8, 7, 8, 8], 8)).to eq([0, 1, 3, 4])
    expect(get_indices([true, false, true, false], true)).to eq([0, 2])
    expect(get_indices([true, false, true, false], false)).to eq([1, 3])
  end
end
