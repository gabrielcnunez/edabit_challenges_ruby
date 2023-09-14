require 'rspec'
require './lib/face_interval'

RSpec.describe 'Face Interval' do
  it 'takes array of numbers, returns emoticon based on whether difference of largest and smallest number is contained within array' do
    expect(face_interval([1, 2, 5, 8, 3, 9])).to eq(":)")
    expect(face_interval([5, 2, 8, 3, 11])).to eq(":(")
    expect(face_interval([20, 50, 13, 60, 22, 72, 99])).to eq(":(")
    expect(face_interval([11, 42, 83, 28, 47, 94])).to eq(":)")
    expect(face_interval("bruh")).to eq(":/")
  end
end