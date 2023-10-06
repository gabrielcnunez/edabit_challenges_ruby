require 'rspec'
require './lib/where_are_my_glasses'

RSpec.describe 'Where Are My Glasses?' do
  it 'returns index of glasses in an array of strings' do
    expect(find_glasses(['phone', 'O-O', 'coins', 'keys'])).to eq(1)
    expect(find_glasses(['OO', 'wallet', 'O##O', 'O----O'])).to eq(3)
    expect(find_glasses(['O_O', 'O-O', 'OwO'])).to eq(1)
    expect(find_glasses(['O--#--O', 'dustO---Odust', 'more dust'])).to eq(1)
    expect(find_glasses(['floor', 'the floor again', 'pockets', 'bed', 'cabinet', 'the top of my head O-O'])).to eq(5)
    expect(find_glasses(['OOOO----~OOO', '-------', 'OOOOOOO', 'OO-OO-OO-O'])).to eq(3)
  end
end