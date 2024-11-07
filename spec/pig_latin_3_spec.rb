require 'rspec'
require './lib/pig_latin_3.rb'

RSpec.describe 'pigLatin 3.0' do
  it 'convert sentence string into pig latin' do
    expect(pig_latin_sentence("this is pig latin")).to eq("isthay isway igpay atinlay")
    expect(pig_latin_sentence("wall street journal")).to eq("allway eetstray ournaljay")
  end
end