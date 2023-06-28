require 'rspec'
require './lib/diagonal_of_cube'

RSpec.describe 'diagonal of a cube' do
  it 'takes the volume of a cube and returns the main diagonal' do
    expect(cube_diagonal(8)).to eq(3.46)
    expect(cube_diagonal(343)).to eq(12.12)
    expect(cube_diagonal(1157.625)).to eq(18.19)
    expect(cube_diagonal(12)).to eq(3.97)
    expect(cube_diagonal(1)).to eq(1.73)
    expect(cube_diagonal(48)).to eq(6.29)
    expect(cube_diagonal(1728)).to eq(20.78)
  end
end