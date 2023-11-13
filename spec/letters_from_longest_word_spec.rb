require 'rspec'
require './lib/letters_from_longest_word'

RSpec.describe 'Letters Formed from the Longest Word' do
  it 'returns boolean if all strings can be formed by characters from longest string' do
    expect(can_form(["mast", "manifest", "met", "fan"])).to eq(true)
    expect(can_form(["may", "master", "same", "reams"])).to eq(false)
    expect(can_form(["may", "same", "reams", "mastery"])).to eq(true)
    expect(can_form(["kerfuffle", "fluke", "fluff", "ruffle", ])).to eq(true)
    expect(can_form(["monument", "momento", "moment", "tome"])).to eq(false)
    expect(can_form(["shape", "shapers", "raps", "saps"])).to eq(true)
  end
end