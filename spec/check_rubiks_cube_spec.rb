require 'rspec'
require './lib/check_rubiks_cube'

RSpec.describe "Check Rubik's Cube" do
  it 'returns string depending upon if cube is full, non-full, or missing parts' do
    expect(identify(
      ["O", "O"],
      ["O", "O"],
      ["O", "O", "O"]
    )).to eq("Missing 2")

    expect(identify(
      ["O", "O"],
      ["O", "O", "O"]
    )).to eq("Missing 1")

    expect(identify(
      ["O", "O", "O"],
      ["O", "O", "O"],
      ["O", "O", "O"]
    )).to eq("Full")

    expect(identify(
      ["O", "O", "O", "O"],
      ["O", "O", "O", "O"],
      ["O", "O", "O", "O"],
      ["O", "O", "O", "O"]
    )).to eq("Full")

    expect(identify(
      ["O", "O", "O", "O"],
      ["O", "O", "O", "O"],
      ["O", "O", "O"],
      ["O", "O", "O", "O"]
    )).to eq("Missing 1")

    expect(identify(
      ["O", "O", "O", "O"],
      ["O", "O", "O", "O"]
    )).to eq("Non-Full")

    expect(identify(
      ["O", "O"],
      ["O", "O"]
    )).to eq("Full")

    expect(identify(
      ["O", "O"],
      ["O"]
    )).to eq("Missing 1")
  end
end