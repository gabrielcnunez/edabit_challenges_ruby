require 'rspec'
require './lib/validating_a_set.rb'

RSpec.describe 'Validating a Set' do
  it 'determines whether array of three cards constitute a valid set in the game Set' do
    expect(is_set(
    [{"color": "red", "number": 1, "shade": "lined", "shape": "squiggle"}, 
    {"color": "red", "number": 1, "shade": "lined", "shape": "diamond"}, 
    {"color": "red", "number": 1, "shade": "lined", "shape": "squiggle"}]
    )).to eq(false)

    expect(is_set(
    [{"color": "purple", "number": 3, "shade": "full", "shape": "oval"}, 
    {"color": "green", "number": 1, "shade": "full", "shape": "oval"}, 
    {"color": "red", "number": 3, "shade": "full", "shape": "oval"}]
    )).to eq(false)

    expect(is_set(
    [{"color": "red", "number": 1, "shade": "empty", "shape": "squiggle"}, 
    {"color": "red", "number": 2, "shade": "lined", "shape": "diamond"}, 
    {"color": "purple", "number": 3, "shade": "full", "shape": "oval"}]
    )).to eq(false)

    expect(is_set(
    [{"color": "red", "number": 1, "shade": "empty", "shape": "squiggle"}, 
    {"color": "red", "number": 1, "shade": "lined", "shape": "diamond"}, 
    {"color": "red", "number": 1, "shade": "lined", "shape": "oval"}]
    )).to eq(false)

    expect(is_set(
    [{"color": "red", "number": 1, "shade": "lined", "shape": "squiggle"}, 
    {"color": "red", "number": 1, "shade": "lined", "shape": "diamond"}, 
    {"color": "red", "number": 1, "shade": "lined", "shape": "oval"}]
    )).to eq(true)

    expect(is_set(
    [{"color": "red", "number": 1, "shade": "empty", "shape": "squiggle"}, 
    {"color": "red", "number": 2, "shade": "lined", "shape": "diamond"}, 
    {"color": "red", "number": 3, "shade": "full", "shape": "oval"}]
    )).to eq(true)

    expect(is_set(
    [{"color": "green", "number": 1, "shade": "empty", "shape": "squiggle"}, 
    {"color": "green", "number": 2, "shade": "empty", "shape": "diamond"}, 
    {"color": "green", "number": 3, "shade": "empty", "shape": "oval"}]
    )).to eq(true)

    expect(is_set(
    [{"color": "purple", "number": 1, "shade": "full", "shape": "oval"}, 
    {"color": "green", "number": 1, "shade": "full", "shape": "oval"}, 
    {"color": "red", "number": 1, "shade": "full", "shape": "oval"}]
    )).to eq(true)
  end
end