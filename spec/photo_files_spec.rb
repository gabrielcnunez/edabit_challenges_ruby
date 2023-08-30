require 'rspec'
require './lib/photo_files'

RSpec.describe 'Photo Files Challenge' do
  it 'takes string of info from photo files, returns reformatted photo file info' do
    expect(solution("photo.jpg, Krakow, 2013-09-05 14:08:15\nMike.png, London, 2015-06-20 15:13:22\nmyFriends.png, Krakow, 2013-09-05 14:07:13\nEiffel.jpg, Florianopolis, 2015-07-23 08:03:02\npisatower.jpg, Florianopolis, 2015-07-22 23:59:59\nBOB.jpg, London, 2015-08-05 00:02:03\nnotredame.png, Florianopolis, 2015-09-01 12:00:00\nme.jpg, Krakow, 2013-09-06 15:40:22\na.png, Krakow, 2016-02-13 13:33:50\nb.jpg, Krakow, 2016-01-02 15:12:22\nc.jpg, Krakow, 2016-01-02 14:34:30\nd.jpg, Krakow, 2016-01-02 15:15:01\ne.png, Krakow, 2016-01-02 09:49:09\nf.png, Krakow, 2016-01-02 10:55:32\ng.jpg, Krakow, 2016-02-29 22:13:11")).to eq("Krakow02.jpg\nLondon1.png\nKrakow01.png\nFlorianopolis2.jpg\nFlorianopolis1.jpg\nLondon2.jpg\nFlorianopolis3.png\nKrakow03.jpg\nKrakow09.png\nKrakow07.jpg\nKrakow06.jpg\nKrakow08.jpg\nKrakow04.png\nKrakow05.png\nKrakow10.jpg")
  end
end