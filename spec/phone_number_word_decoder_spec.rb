require 'rspec'
require './lib/phone_number_word_decoder'

RSpec.describe 'Phone Number Word Decoder' do
  it 'converts phone number with letters to one with only numbers' do
    expect(text_to_num("123-647-EYES")).to eq("123-647-3937")
    expect(text_to_num("(325)444-TEST")).to eq("(325)444-8378")
    expect(text_to_num("653-TRY-THIS")).to eq("653-879-8447")
    expect(text_to_num("435-224-7613")).to eq("435-224-7613")
    expect(text_to_num("(33D)ONT-FAIL")).to eq("(333)668-3245")
    expect(text_to_num("(025)445-6741")).to eq("(025)445-6741")
  end
end