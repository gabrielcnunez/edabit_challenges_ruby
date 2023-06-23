require 'rspec'
require './lib/censor_words'

RSpec.describe 'censor' do
  it 'censors words or numbers in a string longer than four characters' do
    expect(censor("The code is fourty")).to eq("The code is ******")
    expect(censor("Two plus three is five")).to eq("Two plus ***** is five")
    expect(censor("aaaa aaaaa 1234 12345")).to eq("aaaa ***** 1234 *****")
    expect(censor("abcdefghijklmnop")).to eq("****************")
    expect(censor("a")).to eq("a")
  end
end