require 'rspec'
require './lib/concert_seats'

RSpec.describe 'Concert Seats' do
  it 'determines whether each seat can "see" the front stage' do
    # expect(can_see_stage(
    # [[1, 2, 3], 
    # [4, 5, 6], 
    # [7, 8, 9]])).to eq(true)

    # expect(can_see_stage(
    # [[1, 2, 2], 
    # [1, 2, 3], 
    # [4, 4, 4]])).to eq(false)

    expect(can_see_stage(
    [[1, 1, 2], 
    [5, 2, 3], 
    [4, 4, 4]])).to eq(false)

    expect(can_see_stage(
    [[1, 1, 2], 
    [5, 2, 3], 
    [6, 4, 4]])).to eq(true)

    expect(can_see_stage(
    [[0, 0, 0], 
    [1, 1, 1], 
    [2, 2, 2]])).to eq(true)

    expect(can_see_stage(
    [[2, 0, 0], 
    [1, 1, 1], 
    [2, 2, 2]])).to eq(false)

    expect(can_see_stage(
    [[1, 0, 0], 
    [1, 1, 1], 
    [2, 2, 2]])).to eq(false)

    expect(can_see_stage(
    [[1, 2, 3, 2, 1, 1], 
    [2, 4, 4, 3, 2, 2], 
    [5, 5, 5, 5, 4, 4], 
    [6, 6, 7, 6, 5, 5]])).to eq(true)

    expect(can_see_stage(
    [[1, 2, 3, 2, 1, 1], 
    [2, 4, 4, 3, 2, 2], 
    [5, 5, 5, 10, 4, 4], 
    [6, 6, 7, 6, 5, 5]])).to eq(false)
  end
end