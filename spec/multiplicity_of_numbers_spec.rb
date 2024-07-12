require 'rspec'
require './lib/multiplicity_of_numbers'

RSpec.describe "Multiplicity" do
  it "will return an array of arrays that contains each number and its count" do
    expect(multiplicity([1, 1, 1, 2, 2, 3])).to eq([[1, 3], [2, 2], [3, 1]])
    expect(multiplicity([1, 1, 1, 1, 1])).to eq([[1, 5]])
    expect(multiplicity([1, 5, 4, 3, 2])).to eq([[1, 1], [5, 1], [4, 1], [3, 1], [2, 1]])
    expect(multiplicity([5, 5, 5, 5, 8])).to eq([[5, 4], [8, 1]])
    expect(multiplicity([3, 3, 3, 0])).to eq([[3, 3], [0, 1]])
    expect(multiplicity([1, 1, 2, 2, 3, 3, 4, 4])).to eq([[1, 2], [2, 2], [3, 2], [4, 2]])
    expect(multiplicity([4, 4, 3, 3, 2, 2, 1, 1])).to eq([[4, 2], [3, 2], [2, 2], [1, 2]])
  end
end