require 'rspec'
require './lib/track_robot'

RSpec.describe 'Track the Robot' do
  it 'returns the position of robot as array based on string of movements' do
    expect(track_robot("..<.<.")).to eq([1, 1])
    expect(track_robot("<>>>><><<<><>>>><><<<><>>><>")).to eq([0, 0])
    expect(track_robot(".<..<...<....<.....<......")).to eq([3, 4])
    expect(track_robot(">>..")).to eq([-2, 0])
    expect(track_robot("..<<..>>..<<..>>..")).to eq([2, 0])
  end
end