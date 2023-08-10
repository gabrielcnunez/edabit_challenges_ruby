require 'rspec'
require './lib/concentric_rugs'

RSpec.describe 'Concentric Rugs' do
  it 'takes an odd positive integer and generates a concentric rugs of arrays' do
    expect(generate_rug(1)).to eq([
      [0]
    ])

    expect(generate_rug(3)).to eq([
      [1, 1, 1],
      [1, 0, 1],
      [1, 1, 1]
    ])

    expect(generate_rug(5)).to eq([
      [2, 2, 2, 2, 2],
      [2, 1, 1, 1, 2],
      [2, 1, 0, 1, 2],
      [2, 1, 1, 1, 2],
      [2, 2, 2, 2, 2]
    ])

    expect(generate_rug(7)).to eq([
      [3, 3, 3, 3, 3, 3, 3],
      [3, 2, 2, 2, 2, 2, 3],
      [3, 2, 1, 1, 1, 2, 3],
      [3, 2, 1, 0, 1, 2, 3],
      [3, 2, 1, 1, 1, 2, 3],
      [3, 2, 2, 2, 2, 2, 3],
      [3, 3, 3, 3, 3, 3, 3]
    ])

    expect(generate_rug(9)).to eq([
      [4, 4, 4, 4, 4, 4, 4, 4, 4],
      [4, 3, 3, 3, 3, 3, 3, 3, 4],
      [4, 3, 2, 2, 2, 2, 2, 3, 4],
      [4, 3, 2, 1, 1, 1, 2, 3, 4],
      [4, 3, 2, 1, 0, 1, 2, 3, 4],
      [4, 3, 2, 1, 1, 1, 2, 3, 4],
      [4, 3, 2, 2, 2, 2, 2, 3, 4],
      [4, 3, 3, 3, 3, 3, 3, 3, 4],
      [4, 4, 4, 4, 4, 4, 4, 4, 4]
    ])
  end
end