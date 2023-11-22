require 'rspec'
require './lib/imaginary_coding_interview'

RSpec.describe 'Imaginary Coding Interview' do
  it 'checks if candidate is qualified in an imaginary coding interview' do
    expect(interview([5, 5, 10, 10, 15, 15, 20, 20], 120)).to eq('qualified')
    expect(interview([2, 3, 8, 6, 5, 12, 10, 18], 120)).to eq('qualified')
    expect(interview([2, 3, 8, 6, 5, 12, 10, 18], 64)).to eq('qualified')
    expect(interview([5, 5, 10, 10, 25, 15, 20, 20], 120)).to eq('disqualified')
    expect(interview([5, 5, 10, 10, 15, 15, 20], 120)).to eq('disqualified')
    expect(interview([5, 5, 10, 10, 15, 15, 20, 20], 130)).to eq('disqualified')
    expect(interview([5, 5, 10, 10, 15, 20, 50], 160)).to eq('disqualified')
    expect(interview([5, 5, 10, 10, 15, 15, 40], 120)).to eq('disqualified')
    expect(interview([10, 10, 15, 15, 20, 20], 150)).to eq('disqualified')
    expect(interview([5, 5, 10, 20, 15, 15, 20, 20], 140)).to eq('disqualified')
  end
end