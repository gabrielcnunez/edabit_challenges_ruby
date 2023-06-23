require 'rspec'
require './lib/unique_styles'

RSpec.describe 'unique_styles' do
  it 'returns the number of unique styles from an array of album strings' do
    expect(unique_styles([
                          "Dub,Dancehall",
                          "Industrial,Heavy Metal",
                          "Techno,Dubstep",
                          "Synth-pop,Euro-Disco",
                          "Industrial,Techno,Minimal"
                        ])).to eq(9)
    expect(unique_styles([
                          "Soul",
                          "House,Folk",
                          "Trance,Downtempo,Big Beat,House",
                          "Deep House",
                          "Soul"
                        ])).to eq(7)
    expect(unique_styles([
                          "Black Metal,Avantgarde",
                          "Funk",
                          "Deep House,House",
                          "Big Band",
                          "Punk"
                        ])).to eq(7)
    expect(unique_styles([
                          "Funk",
                          "Funk",
                          "Funk",
                          "Funk",
                          "Funk",
                        ])).to eq(1)
  end
end