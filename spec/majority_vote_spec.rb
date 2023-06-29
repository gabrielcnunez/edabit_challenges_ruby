require 'rspec'
require './lib/majority_vote'

RSpec.describe 'majority vote' do
  it 'returns what is the majority of elements in an array' do
    expect(majority_vote(["A", "B", "B", "B", "A", "A"])).to eq(nil)
    expect(majority_vote(["B", "B", "B"])).to eq("B")
    expect(majority_vote(["A", "B", "B"])).to eq("B")
    expect(majority_vote(["A", "A", "B"])).to eq("A")
    expect(majority_vote(["A", "A", "A", "B", "C", "A"])).to eq("A")
    expect(majority_vote(["B", "A", "B", "B", "C", "A", "B", "B"])).to eq("B")
    expect(majority_vote(["A", "B", "B", "A", "C", "C"])).to eq(nil)
    expect(majority_vote(["A", "B"])).to eq(nil)
    expect(majority_vote(["A"])).to eq("A")
    expect(majority_vote([])).to eq(nil)
  end
end