require 'rspec'
require './lib/tic_tac_toe'

RSpec.describe 'Tic Tac Toe' do
  it 'given 3x3 matrix of completed tic-tac-toe game, return result' do
    expect(tic_tac_toe([
      ["X", "O", "X"],
      ["O", "X", "O"],
      ["O", "X", "X"]
    ])).to eq("X")

    expect(tic_tac_toe([
      ["O", "O", "O"],
      ["O", "X", "X"],
      ["E", "X", "X"]
    ])).to eq("O")

    expect(tic_tac_toe([
      ["X", "X", "O"],
      ["O", "O", "X"],
      ["X", "X", "O"]
    ])).to eq("Draw")

    expect(tic_tac_toe([
      ["X", "O", "O"],
      ["X", "O", "O"],
      ["X", "X", "X"]
    ])).to eq("X")

    expect(tic_tac_toe([
      ["X", "X", "O"],
      ["O", "O", "X"],
      ["X", "X", "O"]
    ])).to eq("Draw")

    expect(tic_tac_toe([
      ["X", "O", "X"],
      ["O", "X", "O"],
      ["E", "E", "X"]
    ])).to eq("X")

    expect(tic_tac_toe([
      ["X", "O", "E"],
      ["X", "O", "E"],
      ["E", "O", "X"]
    ])).to eq("O")
  end
end