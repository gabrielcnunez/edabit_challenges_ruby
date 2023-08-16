require 'rspec'
require './lib/do_all_bigrams_exist'

RSpec.describe 'Do All Bigrams Exist?' do
  it 'given arrays of bigrams and words, return boolean if all bigrams found in words' do
    expect(can_find(["at", "be", "th", "au"], ["beautiful", "the", "hat"])).to eq(true)
    expect(can_find(["bo", "ta", "el", "st", "ca"], ["books", "table", "cap", "hostel"])).to eq(true)
    expect(can_find(["la", "te"], ["latte"])).to eq(true)
    expect(can_find(["th", "fo", "ma", "or"], ["the", "many", "for", "forest"])).to eq(true)
    expect(can_find(["ay", "be", "ta", "cu"], ["maybe", "beta", "abet", "course"])).to eq(false)
    expect(can_find(["oo", "mi", "ki", "la"], ["milk", "chocolate", "cooks"])).to eq(false)
    expect(can_find(["la"], [])).to eq(false)
    expect(can_find(["la", "at", "te", "ea"], ["latte"])).to eq(false)
  end
end